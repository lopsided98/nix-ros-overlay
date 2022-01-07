
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-noetic-azure-iot-sdk-c";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/noetic/azure-iot-sdk-c/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "99981f9fd418f28de05e290b3dac70eaa09c3b1a0654353e51f02477fa6322bd";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin curl openssl util-linux ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Azure IoT C SDKs and Libraries'';
    license = with lib.licenses; [ mit ];
  };
}
