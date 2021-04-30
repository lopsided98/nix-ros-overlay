
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-sdk-examples";
  version = "3.7.51-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/DynamixelSDK-release/archive/release/kinetic/dynamixel_sdk_examples/3.7.51-2.tar.gz";
    name = "3.7.51-2.tar.gz";
    sha256 = "bb462f9a9eb1e9ce355325b1b5730c817a7a63e344adc4c95ef48a9da45adc3e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ dynamixel-sdk message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The DYNAMIXEL SDK ROS example package'';
    license = with lib.licenses; [ asl20 ];
  };
}
