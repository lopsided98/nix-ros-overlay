
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-noetic-azure-iot-sdk-c";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/noetic/azure-iot-sdk-c/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "7469da7623ea4c361543d55efcf307dd70e9dda2d888e51ddb1f68f80d0ad085";
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
