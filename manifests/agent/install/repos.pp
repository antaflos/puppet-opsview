class opsview::agent::install::repos {
  apt::source { 'opsview_agent':
    location    => 'http://downloads.opsview.com/opsview-core/latest/apt',
    release     => $::lsbdistcodename,
    repos       => 'main',
    key         => '0FC6984B',
    key_content => '-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1.4.10 (GNU/Linux)

mQENBE+RJcUBCACufp+mfI70ZUTPx9gaebIQEpg11OGp0y068gB5UZzhZ+hf8T9p
0YYUgRQ4qv8VL+YY+mvqLcoISkBLvYE7NQWm7xCmKCLpR3rdO/f2T0qS8s2Cl1V9
QV+MtZD9DvgWtwXSJDf9Ne6qgayyhdazMFTV/4pxMkkfRG2jYixDwx4RlgvJ0fgK
s9oS1REdXZ0LoNcwJ2eBqZljtXELUs38IYaoZNGAMzggTnfqxD0yV6NA87wxslpj
Ek5Zx1IsPf87odMnDshynb/rJG20SqouEFBeGGIZg9mR6/1n05ht2C7UmxFXw3am
w0eqAZ2Mv6gRQHrjeLy/N8a2/GCjN8iXW1D9ABEBAAG0T09wc3ZpZXcgUmVwb3Np
dG9yaWVzIChodHRwczovL2Rvd25sb2Fkcy5vcHN2aWV3LmNvbSkgPHJlcG9zaXRv
cmllc0BvcHN2aWV3LmNvbT6JATgEEwECACIFAk+RJcUCGwMGCwkIBwMCBhUIAgkK
CwQWAgMBAh4BAheAAAoJEDJ8cM0PxphLo40H/3Mi6zSWT2Gs6/R2tBr893zxATmh
Wp+VD9V9+i01dk5molEsetqwydj2IXIJWw3JIGODuRj8xzl8LW9vBNIxSOFtdml8
9VH5oEQdzsikLo69914PNRy5nXNMnH40weAkm5xCKH4a7qSWN37KIhHjS2ZDD89b
UzIT82eBDdAFbUodNxLR9WSHTKISiAeRUkHGfJU8d2YLZCfzCvFR7c1uwzr3XC6p
ORIK1yNu9dL3y2ZgjyTB2W1OR0XPGXCFOXOA5hIpGt4We1TcShEgOqpLzYYUlrmh
VePUcjAqoA20JWttT5xOsJnnZqEJRTknnBKbDzZUtSqekjLBnqIXEE4I8kW5AQ0E
T5ElxQEIAK65S8VDrha8j8H6zMLOSKT83mQf9fmouxzCtxqsfkjRik5/6ZRnYY6c
k4DPj+2nN4hJNKa2VQ9f1qQTQ1Q/8AEhA/ljg8a9E8neClUyCfOq0HQ9TKlFbQN/
gdvEOdspyWSEJxbFCX/IQy1kDhMf1DJRpUKUU1gJUOQiHsobM9FMX9jf4at+N9qD
i2N1tBlFK2v+T6du32Vfukxv56D+rozCr/EkJZmD6DT/enpQG6tK6+lhitmr1AgB
kLegV9RIJWSulu08RqpBgXNV7Hru8EI/MZWfdzuasiXA3I+umjXoch8wuF8I5R0P
GS25mit3DNs1o+6jV7TogsIv2PiC1ysAEQEAAYkBHwQYAQIACQUCT5ElxQIbDAAK
CRAyfHDND8aYS9xmCACQUNq33dBrNQz5ggXLXeOfwEgzrDAcd1TeTn7bDF5viXiW
EfoDw302jafYybtR4iojXC+r78EdEIPzPN21tUzN6o3HqZfgzDS0r7YBRsid/0x0
0Doc//ebZBJVMXe+MtzGYpkYQojSCYIS6WXdrRv/NRWlfMajqIkAliqggZFaRRuJ
L1tszaI0+2Ep1I7I8TRlmhvmd6S6w12HZtaQGBzv9ylI23m5LbSsLDYrZtIqeRBo
ucfnvywHuqgrgxgO+x8PRG7v7gfFT0QaJcWf6PwuxsqNsOq4UqZCRnfj3jg/aUoO
JE37AT9NT+b06NS5cSJVhWfky4fblE9bhPxjLDOZ
=HqD/
-----END PGP PUBLIC KEY BLOCK-----',
  }
}
