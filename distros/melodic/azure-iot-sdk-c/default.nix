
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-melodic-azure-iot-sdk-c";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/melodic/azure-iot-sdk-c/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "378723320c229afa2d043f87d3be5710f6b6eaaaf732990b9114840fe1fe6009";
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
