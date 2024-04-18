//===----------------------------------------------------------------------===//
//
// This source file is part of the Hummingbird open source project
//
// Copyright (c) YEARS the Hummingbird authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Hummingbird authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//


let testServerName = "hummingbird.codes"

let caCertificateData =
"""
-----BEGIN CERTIFICATE-----
MIIDyTCCArGgAwIBAgIUC0FvEu+kqoj7HdQ0+ENclu+xGLgwDQYJKoZIhvcNAQEL
BQAwdDELMAkGA1UEBhMCVUsxEjAQBgNVBAgMCUVkaW5idXJnaDESMBAGA1UEBwwJ
RWRpbmJ1cmdoMRQwEgYDVQQKDAtIdW1taW5nYmlyZDELMAkGA1UECwwCQ0ExGjAY
BgNVBAMMEWh1bW1pbmdiaXJkLmNvZGVzMB4XDTI0MDQxODE1MTE0NFoXDTI5MDQx
NzE1MTE0NFowdDELMAkGA1UEBhMCVUsxEjAQBgNVBAgMCUVkaW5idXJnaDESMBAG
A1UEBwwJRWRpbmJ1cmdoMRQwEgYDVQQKDAtIdW1taW5nYmlyZDELMAkGA1UECwwC
Q0ExGjAYBgNVBAMMEWh1bW1pbmdiaXJkLmNvZGVzMIIBIjANBgkqhkiG9w0BAQEF
AAOCAQ8AMIIBCgKCAQEAu0NMHk+tK78/r9GHjPmUSTvg4ZGx/gsBjQqZB4Lsi7O8
UnaKhHYTmCHeAUC/TmfO/0cNg3tdsf3XPW96fYQqGFjssZttDQwUjJ761x6OgLMC
POHXITJCpC37cfQAG77v8Fay5ydW4Cf2IEnWpZLS/LATTxeafsSEzQFRjI43H8Pv
cho6fQvnXJnHt3jp84uYYwNObjk3XIdpcA+RIqziQvTbOIo0FDgUxP/V0vwS/Wrd
FxSMqC7bwYb1W06j+AHdkOExVAPVqWcHJ4rWTuzyIPDIvi3jFo4l2cC67PVUoOV3
4gu4ED2Fd5xtGlyPS7ICoaXUAuI3qMpeG1TVTZU2+wIDAQABo1MwUTAdBgNVHQ4E
FgQUfxqlFjW3ct+sh+aPfZqP55g93HYwHwYDVR0jBBgwFoAUfxqlFjW3ct+sh+aP
fZqP55g93HYwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAA+WL
Ny7rL/mFx6Ubxl4f+2JoAZH8i3GvvLHjFcx8mNkPCzS5M6UqTxeSk5dARBQK19DH
dOO1YsFKN02ZOvfmtIOV9aXoOGtq+bg0nlA6ipFuBJJNatUCWwwLT8t3vp2a/f9R
YrAv9W7U3m+aYEcYtQcOszzG6llFBXV5yH/E2ltP5Af8hKoJzGDDZ8f54XAk8pPk
qONvnwI+8mUrln9wK/ImbCVNVyNAa4OE6v/cRFh0/4x9uSYmyZbfrlPsGD71QEAy
WoKD6oPlUwmBautms99+t5CSQbqzX56mJnC7ZcRfpia+rgTB2mfnx+I7RM3c499z
I/EgHutghVgf+8aIPg==
-----END CERTIFICATE-----
"""

let serverCertificateData =
"""
-----BEGIN CERTIFICATE-----
MIIECDCCAvCgAwIBAgIUWG1O5HT62wipJeoLL2pKwmruxIgwDQYJKoZIhvcNAQEL
BQAwdDELMAkGA1UEBhMCVUsxEjAQBgNVBAgMCUVkaW5idXJnaDESMBAGA1UEBwwJ
RWRpbmJ1cmdoMRQwEgYDVQQKDAtIdW1taW5nYmlyZDELMAkGA1UECwwCQ0ExGjAY
BgNVBAMMEWh1bW1pbmdiaXJkLmNvZGVzMB4XDTI0MDQxODE1MTE0NFoXDTI5MDQx
NzE1MTE0NFoweDELMAkGA1UEBhMCVUsxEjAQBgNVBAgMCUVkaW5idXJnaDESMBAG
A1UEBwwJRWRpbmJ1cmdoMRQwEgYDVQQKDAtIdW1taW5nYmlyZDEPMA0GA1UECwwG
U2VydmVyMRowGAYDVQQDDBFodW1taW5nYmlyZC5jb2RlczCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAOjB6welf87hsHb/JKgnw14k6Kmz259evjRlJfS6
dqs/1LQ2f0UZbrEu/VAcch0fkzjDJKL8sl2sjd1QRvJPOAn+vyyloJofS8qCrPIr
H5xtX1YQbn7HuH1Ul+fhD6/g/mLcKGBX3lar6pdMLZmcBO1Zy/wheBMeLxCQ0aVm
SuiSA0vhtdtwlFvW2fvtk/bf5lgclzNrMQgSYpzc6QxSNl1hghg0qdnKJeK/Cjp0
p8avcqn5PbK7lcJMu7LQVcx8ljbivmG2n5VNnRrtginDb/Un+p//EVXxFRIkxr1s
QC2bCfaHVE5sj4/bGyfnNStWllFfQL5F6+tiFa2jOcSDvksCAwEAAaOBjTCBijAL
BgNVHQ8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMBwGA1Ud
EQQVMBOCEWh1bW1pbmdiaXJkLmNvZGVzMB0GA1UdDgQWBBQENV3K6XiIfpiAvmSP
UVnP4ppKWzAfBgNVHSMEGDAWgBR/GqUWNbdy36yH5o99mo/nmD3cdjANBgkqhkiG
9w0BAQsFAAOCAQEAQLkYqgfhH6cYLp36xuqNg52ziGn8nzxjpoKjoYT0+3uCcCPW
hS8Y5yHWifJf//bh+6GASrHq9+E/9o5u/PjbtQwvN9HdgcPTTggovq1Pb9aBRN/b
nxqIc3bUFedjbE0EuYJuEfWNBrmqEvPK9IoeI8KK1BVC0R2WLeRgfN8zXL1Jsb/d
1jfguMSm3jgPG9my3UOdJURjvZ92GQOAXEzGRVgmw5apNBIyU4hPsHtPnO6v33Ob
d4PmxqEdznHUp6dG/8vlj31tOW63SntqQSezY24jOo0qh+cC4sytHPNtbaRJ6LWH
jLLpvjoRoXMpKqkiYmlrobW3QUkCNJX7E+52fw==
-----END CERTIFICATE-----
"""

let serverPrivateKeyData =
"""
-----BEGIN PRIVATE KEY-----
MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDowesHpX/O4bB2
/ySoJ8NeJOips9ufXr40ZSX0unarP9S0Nn9FGW6xLv1QHHIdH5M4wySi/LJdrI3d
UEbyTzgJ/r8spaCaH0vKgqzyKx+cbV9WEG5+x7h9VJfn4Q+v4P5i3ChgV95Wq+qX
TC2ZnATtWcv8IXgTHi8QkNGlZkrokgNL4bXbcJRb1tn77ZP23+ZYHJczazEIEmKc
3OkMUjZdYYIYNKnZyiXivwo6dKfGr3Kp+T2yu5XCTLuy0FXMfJY24r5htp+VTZ0a
7YIpw2/1J/qf/xFV8RUSJMa9bEAtmwn2h1RObI+P2xsn5zUrVpZRX0C+RevrYhWt
oznEg75LAgMBAAECggEAZAjX4OjttbYE2BfPIuA4FLGrNyhgRy36dF1Wg0hScUZV
PgDAESwdiVQnNbOMDd1AsmAYUl5lsGHVdN0oKMMIVC9i7abfj+3MbqRb/RawltPg
6gXU33Mp5N+jC9sMGWyLGGUDi2ioW7q2b8EjRgYqjfIOe/XMe/b4hlefasU8g5hP
jwEGGRH+BJJ15sEQTJHE4r6bHVvbiMN5OmfzgH7k6OyC1xJ24DXHyBLZsA+4PQ9f
TAj6y1whoVzJb/p/V2vNUSA9XR6lKe+bZ+g7YAdA6xq2I9FoGSQz44mlzu4KSAXJ
X9GUthUIFBUcfGy7KO6SiYUI5d3gRNgyD+OQcR104QKBgQD9ZJXw/Z614Am0Ztrv
miSc7gu+wRKsTowNrD1DMqTVj7Ibmus2m23EEJpH405wF6mRDCmrcAjk5T41jz3p
COyR7Mhdq64coe6MiDqes4ssvNN+RH6xuIjzeU5pXUCksZddnojEz11GnJT4bBhy
Dr7Pdf7gs9dsykgl1eg5Y0IuqwKBgQDrJvsDlT2C+OngdJXOhiYQAl8jRnFJVAZ+
Qj567vSCDniOWifoi/gDss8H9iZYuTg4kxHjryH7w7MfyZWREeXRSKFQnbYlaZUf
M4v44uS9zoIAFNAUHkPjqxCMVRHaMASDzoIialy+LmiZjk10clEBzTTTrbf99i8s
elnTUOIu4QKBgQCO1jeLnHvtzDfMQLqjnAGNkMaAJffvt2tNfc0e5xpx5EmjNAXp
R15tymodoe2iVERapj+LC2GIHg2eRXvBtC0e6Rnda5x/OWzuPRDGSzFl659Qqy27
4ukYTkY8MLvy2sUXmflA8B+FYVi8XLq++L7o1XvykI4cHj7jTRxV1TUGdwKBgQDe
DzF7cLNluykgjPfqz0OiWpr89MiGNpLrKCNYc87yAjhWNUz6jTLoSzK2kfwkTMSK
qFd8ayXsWiINIo/bLsuXlr6/Ii+fpNTtYgAMSDc6Bok9Cmp0lSAHHsPBwZPaNv4M
ejbpyQdLkQe1+muqS0m0KdR5ENNvP8vMdL3ej8MIAQKBgQDsu87eb5uwOK+78AK0
+35T/er/hSWg1SqwGYS9TTVEuFcr1EOhyksQsXLlaWKS4oGFCNgQqr2dH7Pa9MId
T7fiWOxAN0e20B01MGW1F35dCIZ7ug6yg5qEMA4/8NIqlYsCGLIyOz1oFVb9fSRS
zkvY004KG3oTEvMXM/AthX9VEw==
-----END PRIVATE KEY-----
"""

let clientCertificateData =
"""
-----BEGIN CERTIFICATE-----
MIIDvDCCAqSgAwIBAgIUWG1O5HT62wipJeoLL2pKwmruxIkwDQYJKoZIhvcNAQEL
BQAwdDELMAkGA1UEBhMCVUsxEjAQBgNVBAgMCUVkaW5idXJnaDESMBAGA1UEBwwJ
RWRpbmJ1cmdoMRQwEgYDVQQKDAtIdW1taW5nYmlyZDELMAkGA1UECwwCQ0ExGjAY
BgNVBAMMEWh1bW1pbmdiaXJkLmNvZGVzMB4XDTI0MDQxODE1MTE0NFoXDTI5MDQx
NzE1MTE0NFoweDELMAkGA1UEBhMCVUsxEjAQBgNVBAgMCUVkaW5idXJnaDESMBAG
A1UEBwwJRWRpbmJ1cmdoMRQwEgYDVQQKDAtIdW1taW5nYmlyZDEPMA0GA1UECwwG
Q2xpZW50MRowGAYDVQQDDBFodW1taW5nYmlyZC5jb2RlczCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMU5wy8qWT86YeFSSFanc8tGhL2kKZAXv6Oqh+KJ
BGWx6uAN4WLNqMccGKgXSBFbaZ9ve+CgjbB3l6fZdflpty6O1GVVdpzFn2bq2XdE
ld5L4xyV5JTPy+LDo1r2c+S4Q2F3VTddtkTBhWhP2QS9J9pvmfOtffA3/WUfznXz
XdmoFBUxXiXbGTeWFi92sFC/iDEQzXXHuVBpykWvjF5L26rcZZWAtHeMTbRfqi6X
aip27i4mX+Ehc2UMmt2C2OPiMQXGcNUn0tU8w0InPXTe0/CzvJnIwqnc+ZLcyaVA
YJzqGH0ADBYY9qmzXB81BzoyAPUjiBtmdNoLx8YsY/s29nsCAwEAAaNCMEAwHQYD
VR0OBBYEFJ1eR4W1da4+cKl/Y3dyi0i7pcyHMB8GA1UdIwQYMBaAFH8apRY1t3Lf
rIfmj32aj+eYPdx2MA0GCSqGSIb3DQEBCwUAA4IBAQAZyYzLMHsHHAGV5Zc79NTz
E4SwcOiL1GIpsRzXQqw6w2U+v9EJ14MKbXtJzYN0J8kLmcxKeO3RITtGzu4RoXlZ
uuQsM/SE7CAiCUmcsRTsWFi/tLKFLEiSItcdDbVywAPz17A/MbGup7hOZmvcb6jB
PW3ezvGsRQ5zw3pQDtWGnKrpjHuGjxJ4p0FQ9TkekP4h0lxVFm5CY/IDvpOnShjS
UGMtaXGo/cKKevduf/TDSp/u0TUu4FqQsKCc9nTstj24HzS2bw1/lRJQEWhVrBB3
RfnzmbYN4z4m3AcFvfVUJuBlJONEZHTZsidLoaB5PKyHBkSM6mkVOUoCELljt6tX
-----END CERTIFICATE-----
"""

let clientPrivateKeyData =
"""
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDFOcMvKlk/OmHh
UkhWp3PLRoS9pCmQF7+jqofiiQRlsergDeFizajHHBioF0gRW2mfb3vgoI2wd5en
2XX5abcujtRlVXacxZ9m6tl3RJXeS+McleSUz8viw6Na9nPkuENhd1U3XbZEwYVo
T9kEvSfab5nzrX3wN/1lH851813ZqBQVMV4l2xk3lhYvdrBQv4gxEM11x7lQacpF
r4xeS9uq3GWVgLR3jE20X6oul2oqdu4uJl/hIXNlDJrdgtjj4jEFxnDVJ9LVPMNC
Jz103tPws7yZyMKp3PmS3MmlQGCc6hh9AAwWGPaps1wfNQc6MgD1I4gbZnTaC8fG
LGP7NvZ7AgMBAAECggEANMSYHuHvP/YAYzdPKHQkDJKhCFZIUoewG/uP4MH1Hbpl
E65TC8rnqeIwDKUyAIbbMy+yTq7WSg0tU9jgcithOgE3/abIlfhgBjq2lW0Rxgi6
ypamMlSIgfMDHV7MMjlEueqiL66QikPWzEp0z4pGg/CRGbvk8qUgVHKWnENRbF7N
jwXO4q/vBRJXqMs6VfwybNXShOapvcn5YSyd0Zo7Ab95X0NxwjFvG0vGlZ1cnmT3
8kVi/qao6zQycxFbTHApGtH7dtZYcqsDciI5xw6JOJWFGyQr+zwfTWgEG0QZKowc
sAPlpnLyhGKu0ELqTf4qfXKOJE0Bu2KYg8GZc5n6LQKBgQD6sIWNx2FZMfwOrP65
hCCL8DG7OnEUy8Tl/KgsITBSWo0IaSLPeR/nf6OOB0J4SQdbAI/ZU6Zqz7b7AFnd
reHTNfr5B7dV3loP4aIWzH2PHFmolRueJqozghTL9cn6ImSZOD6lgkJokndV5sR5
MsQXxm9yYil/6wtUmWBgmtGepQKBgQDJZ07wUD5RkS173FT7J3t64Hy8iPo7MExI
fR70ZsZO+waPc5ZUZUEVp9V+UwAlV1PuutfoKLQLcIi09sr3yHH5XYzYZ5Y1t5xS
HHBVP7PCy3MkrJ0Yfa2YCDEftMJdLwd5wzmTkalL0yNcwvOq0FhCdz3psVZjnb3p
rwLCZbJWnwKBgQDgqMlHYeLP+IeW71noD4zLXBp1W85zgJmYMnDT+3o+k3/Ihc/4
dugsoqqEYeUjvu6kk0BW1yxQlI27K3ldvLKggcPE4TFf9sBncyG7pM7xLcr71YTG
mof1WSIiFsdHLwNQfKNH2BCDfp8LkJ+KrgAl/mNp8qaWSKIC0uEYMiahMQKBgFyK
hIH1TP0rqOuNrNqOJLWsKoRyqA/EPHjeTPfdtWca/sOxR7TVpZcuu/FEb/+4ZY9+
+K/q6/eJqLcF4vMBfiUncA0LY8Cg8knkWVVCZPWvh+OlELXtIXOG6BN6eghZEKVJ
J85/knuNs2TvCwlEnBlGMwOLAXfaRiX2zVzHX69fAoGBAPUKdT8Vco8VOoxQ2E/n
7vpbkYejMnidbMXeq7Pm54hC81eZmLrV+WG8cMnN9TB1efH9Tb3EwTuaoTyFr07B
ZT2X+ly6oYv59KWYjbQ+Dowi8eund3W73HUsJqGcPCNmgNBoXe8x1+qyKBir60WY
4eCEFXiLAtX3g1bUiGMDTObU
-----END PRIVATE KEY-----
"""
