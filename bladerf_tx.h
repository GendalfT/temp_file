#ifndef BLADERF_TX_H
#define BLADERF_TX_H

#include <string>

class bladeRF_tx
{
public:
    bladeRF_tx(const std::string &filePath, uint64_t freq, uint32_t rate, uint64_t sample, int gain, bool loop);


private:
    struct bladerf *dev = nullptr;
    std::string filePath;
    uint64_t frequency;
    uint32_t bandwidth;
    uint32_t sampleRate;
    int gain;
    bool loop;
};

#endif // BLADERF_TX_H
