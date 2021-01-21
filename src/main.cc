#include <iostream>
#include "./../ext/headers/args.hxx"
#include "cpu.h"

using namespace dramsim3;

int main(int argc, const char **argv) {
    // 这一部分就是表示运行时接收的参数。例如执行trace文件
    // ./build/dramsim3main configs/DDR4_8Gb_x8_3200.ini -c 100000 -t sample_trace.txt
    args::ArgumentParser parser(
        "DRAM Simulator.",
        "Examples: \n."
        "./build/dramsim3main configs/DDR4_8Gb_x8_3200.ini -c 100 -t "
        "sample_trace.txt\n"
        "./build/dramsim3main configs/DDR4_8Gb_x8_3200.ini -s random -c 100");
    args::HelpFlag help(parser, "help", "Display the help menu", {'h', "help"});
    
    // 这里就是对应的-c参数，默认值是100000（如果没有-c）。
    args::ValueFlag<uint64_t> num_cycles_arg(parser, "num_cycles",
                                             "Number of cycles to simulate",
                                             {'c', "cycles"}, 100000);
    args::ValueFlag<std::string> output_dir_arg(
        parser, "output_dir", "Output directory for stats files",
        {'o', "output-dir"}, ".");
    args::ValueFlag<std::string> stream_arg(
        parser, "stream_type", "address stream generator - (random), stream",
        {'s', "stream"}, "");
    args::ValueFlag<std::string> trace_file_arg(
        parser, "trace",
        "Trace file, setting this option will ignore -s option",
        {'t', "trace"});
    args::Positional<std::string> config_arg(
        parser, "config", "The config file name (mandatory)");

    try {
        parser.ParseCLI(argc, argv);
    } catch (args::Help) {
        std::cout << parser;
        return 0;
    } catch (args::ParseError e) {
        std::cerr << e.what() << std::endl;
        std::cerr << parser;
        return 1;
    }

    std::string config_file = args::get(config_arg);
    if (config_file.empty()) {
        std::cerr << parser;
        return 1;
    }

    uint64_t cycles = args::get(num_cycles_arg);
    std::string output_dir = args::get(output_dir_arg);
    std::string trace_file = args::get(trace_file_arg);
    std::string stream_type = args::get(stream_arg);

    CPU *cpu;
    // 根据运行命令，决定使用哪种cpu
    if (!trace_file.empty()) {      // 如果是执行trace文件（使用了-t选项）
        cpu = new TraceBasedCPU(config_file, output_dir, trace_file);           // 那么就会构造一个TraceBasedCPU
    } else {
        if (stream_type == "stream" || stream_type == "s") {
            cpu = new StreamCPU(config_file, output_dir);
        } else {
            cpu = new RandomCPU(config_file, output_dir);
        }
    }

    // 构造完CPU之后，执行这里
    for (uint64_t clk = 0; clk < cycles; clk++) {       // cycles就是命令行中-c(c是cycle的缩写)对应的参数，默认值为100000，表示一共要执行多少个时钟周期
        cpu->ClockTick();       // 关键函数
    }
    cpu->PrintStats();

    delete cpu;

    return 0;
}
