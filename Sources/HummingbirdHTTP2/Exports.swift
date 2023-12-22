//===----------------------------------------------------------------------===//
//
// This source file is part of the Hummingbird server framework project
//
// Copyright (c) 2021-2021 the Hummingbird authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See hummingbird/CONTRIBUTORS.txt for the list of Hummingbird authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

#if swift(>=5.8)
@_exported @_documentation(visibility: internal) import class NIOSSL.NIOSSLCertificate
@_exported @_documentation(visibility: internal) import class NIOSSL.NIOSSLPrivateKey
@_exported @_documentation(visibility: internal) import struct NIOSSL.TLSConfiguration
#else
@_exported import class NIOSSL.NIOSSLCertificate
@_exported import class NIOSSL.NIOSSLPrivateKey
@_exported import struct NIOSSL.TLSConfiguration
#endif
