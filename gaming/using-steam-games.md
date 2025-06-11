### Setup Steam
Steam Settings > Compatibility > Enable Steam Play for all titles

### For each game
Properties > Compatibility > Enable 'force use of a specific ...'
Properties > Launch options > Paste the following line:

    VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json MESA_LOADER_DRIVER_OVERRIDE=iris %command%



