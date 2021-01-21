#include "memory_system.h"

namespace dramsim3 {
MemorySystem::MemorySystem(const std::string &config_file,
                           const std::string &output_dir,
                           std::function<void(uint64_t)> read_callback,
                           std::function<void(uint64_t)> write_callback)
    : config_(new Config(config_file, output_dir)) {
    // TODO: ideal memory type?
    // 之前这里只生成一个Memory_System，现在在平行架构下，需要两个。一个HMC，一个传统的、
    /*
        应该修改为的代码如下：
        ddr_system = new HMCMemorySystem(*config_, output_dir, read_callback, write_callback);
        hbm_system_ = new JedecDRAMSystem(*config_, output_dir, read_callback, write_callback);     // 这个config和上面的不一样，需要另外的config_file指定类型为HBM
    */
    if (config_->IsHMC()) {
        dram_system_ = new HMCMemorySystem(*config_, output_dir, read_callback,
                                           write_callback);
    } else {
        dram_system_ = new JedecDRAMSystem(*config_, output_dir, read_callback,
                                           write_callback);
    }
}

MemorySystem::~MemorySystem() {
    delete (dram_system_);
    delete (config_);
}

void MemorySystem::ClockTick() { dram_system_->ClockTick(); }

double MemorySystem::GetTCK() const { return config_->tCK; }

int MemorySystem::GetBusBits() const { return config_->bus_width; }

int MemorySystem::GetBurstLength() const { return config_->BL; }

int MemorySystem::GetQueueSize() const { return config_->trans_queue_size; }

void MemorySystem::RegisterCallbacks(
    std::function<void(uint64_t)> read_callback,
    std::function<void(uint64_t)> write_callback) {
    dram_system_->RegisterCallbacks(read_callback, write_callback);
}

bool MemorySystem::WillAcceptTransaction(uint64_t hex_addr,
                                         bool is_write) const {
    return dram_system_->WillAcceptTransaction(hex_addr, is_write);
}

//  CPU里面调用的就是这个函数
bool MemorySystem::AddTransaction(uint64_t hex_addr, bool is_write) {
    return dram_system_->AddTransaction(hex_addr, is_write);
    
    /*
        在这里，我们要进行一些修改：需要判断地址是来自哪个设备，然后将其交给相应的单元
        if (hex_addr is HMC) {
            hmc_system_->AddTranscaction(hex_addr, is_write);
        }
        else if (hex_addr if DDR) {
            ddr_system_->AddTranscaction(hex_addr, is_write);
        }
    */
}

void MemorySystem::PrintStats() const { dram_system_->PrintStats(); }

void MemorySystem::ResetStats() { dram_system_->ResetStats(); }

MemorySystem* GetMemorySystem(const std::string &config_file, const std::string &output_dir,
                 std::function<void(uint64_t)> read_callback,
                 std::function<void(uint64_t)> write_callback) {
    return new MemorySystem(config_file, output_dir, read_callback, write_callback);
}
}  // namespace dramsim3

// This function can be used by autoconf AC_CHECK_LIB since
// apparently it can't detect C++ functions.
// Basically just an entry in the symbol table
extern "C" {
void libdramsim3_is_present(void) { ; }
}
