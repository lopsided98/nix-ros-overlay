
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-iron-azure-iot-sdk-c";
  version = "1.10.1-r3";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/iron/azure-iot-sdk-c/1.10.1-3.tar.gz";
    name = "1.10.1-3.tar.gz";
    sha256 = "533f3ad71e43ad5b1bcb2469a5eb9d3a0144675281b2ef0b9249aa4025a8cde3";
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
