class opsview::agent::install::repos {
  apt::source { 'opsview_agent':
    location    => 'http://downloads.opsera.com/opsview-community/latest/apt',
    release     => 'lucid',
    repos       => 'main',
    key         => '77CB2CF6',
    key_content => '-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1.4.10 (GNU/Linux)

mQGiBEY2cagRBACjL9O/GLUg/pU1mG2N7Q3X2cdnjZ1uxb+RoIylA1P8B0J0Wn6R
jpCnU0EMt5FyOX8Ocxd0QvFxQgeo6scXRPQw0GI5xo8sUm3IU7b2tTMxSNhInXR8
RGMDkejTvNDMYGCineVaP3slgAvfHm95dwFBbxZ5u2sj0icQez2pkC5lFwCglmQj
gaY+3bxb68bJHwB1GEeEX+kD/AybbOoNfhXbqEVcxYpQBUaLMkt6gP8SNSN7czys
C2gohyu7P8xD3gncF38vq0bVh7YXORUQgOS/KchVmn3Ovw2KcYOz5wdHaOi85Isd
GuPtj9bhWJRzve+RSDj86JuVijPBN4TLjuZlb4bNpNml0+QjXmZZU8gLFHT/QsTG
ej2wA/9BQbX4t1u3GFFHeZe3nQoI78xf+Zv7Jj/T1XWnVQTeo77NpuE8sR4t/Zo1
/gqNVACQ+Zpjk8zEoRalb/RIYysK6GiIfPD82B+9OdzABlOfaIkauL6JMZBAP12d
nQt57zF3h0+KC8n2QHkfWJ0m5PICPFGFncNivC/UN/d/DLU9LbQ8QWx0aW5pdHkg
UmVwb3NpdG9yeSBLZXkgKE9wc3ZpZXcpIDxyZXBvc2l0b3JpZXNAb3Bzdmlldy5v
cmc+iGYEExECACYFAkY2cagCGwMFCQlmAYAGCwkIBwMCBBUCCAMEFgIDAQIeAQIX
gAAKCRD7TGdZd8ss9jwtAJ9Kho1XqzOb6Zbai/OGloflUvzGMwCfRl9SzTVj3pi+
uj2z6pjehi/hfyC5Ag0ERjZxqxAIAK1T0srAQDsKzIiY4z7eWDxZsRh5oetTHW2I
m1CFKt3qzaxuwne1VvustE1TfCaWsqLg1zZTLF5wOksv6/UEPltXfy/K3PfQqYhu
QHijEiHMqX5IMnrCZA+8DMELJEsQTxZBCgjJlRGpZpys3LBN2wmPPpF9dEXTgDTi
QgdoK8Y41bUlcy+E4CVLhuLDpMI8+tyM5CIoZYp/6IwLiXM5gUX9u9pHQ8NLVtuG
/0twhAEgKPkl/90LnWdlkIzqHwE5/x7Y9+yrVSRCQ42xEj9jdaY46Rnd0qLo/f7g
1VnpBW5B7LE/6KlceOVY/G82G1zF42f/Z7x6prPct1cJPKaKF5MAAwYH/1WkqlL+
BbTkfu9iuHB35AIK7pdMn9sjZV1+QmT3HmnDxujWbKIr+nxp4z3Q+la5gasIQoGZ
xosCrizwRn0usZKtAu3DQFhFJj4JZuvkqGGT2bKTdBnC43s3NxH46wp229yYHAmA
hhJNembOC76igyPmy0NhwPHJ9aaBpjHnOgIbwikimuQFOh821Bk31dglSqZyMcxj
LaBasvcdoVrTWhqZktaFshdxcIE48UCutXnrHl6kOqf32u9R47gBRFyUbeBpnM7h
mVPypeIi99H8u/WuPBo6fdrkodLKEU8mt9RK21AoM6IpnzVUsrIjYkU1K473rV+w
CqLFEqo5OlG+MeWITwQYEQIADwUCRjZxqwIbDAUJCWYBgAAKCRD7TGdZd8ss9u/8
AJ9Aw4n9aC8bSqoHAZmdD3FaTEYEQgCbBYYYuOS+LYWc32XIuwEowQPoBfs=
=X92X
-----END PGP PUBLIC KEY BLOCK-----',
  }
}
