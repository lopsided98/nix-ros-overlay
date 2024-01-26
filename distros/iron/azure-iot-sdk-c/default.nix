
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-iron-azure-iot-sdk-c";
  version = "1.10.1-r4";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/iron/azure-iot-sdk-c/1.10.1-4.tar.gz";
    name = "1.10.1-4.tar.gz";
    sha256 = "88eed8b26efaa6213e22be630994bd9aabda0fadce49b142070c6fa0d1eede11";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ curl openssl util-linux ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Azure IoT C SDKs and Libraries'';
    license = with lib.licenses; [ mit ];
  };
}
