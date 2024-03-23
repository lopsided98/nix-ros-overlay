
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-iron-azure-iot-sdk-c";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/iron/azure-iot-sdk-c/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "02a7e86d2efe916395fbcf0d914a64f663e138ad30b3998e2280b6af9f7ebb6a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ curl openssl util-linux ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Azure IoT C SDKs and Libraries";
    license = with lib.licenses; [ mit ];
  };
}
