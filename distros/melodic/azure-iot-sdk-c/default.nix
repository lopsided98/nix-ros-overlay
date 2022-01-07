
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-melodic-azure-iot-sdk-c";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/melodic/azure-iot-sdk-c/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "22552d33a053a42b271f8f1cebdd045ad9e2fedcebc753f3e56a33ef01f72ed2";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin curl openssl util-linux ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Azure IoT C SDKs and Libraries'';
    license = with lib.licenses; [ mit ];
  };
}
