
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-noetic-azure-iot-sdk-c";
  version = "1.7.0-r4";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/noetic/azure-iot-sdk-c/1.7.0-4.tar.gz";
    name = "1.7.0-4.tar.gz";
    sha256 = "a15053f5d1ea349991c07839eaf8c8a8eaa33fdb2c98ad7ae0fd898c1b638aa8";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin curl openssl util-linux ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Azure IoT C SDKs and Libraries'';
    license = with lib.licenses; [ mit ];
  };
}
