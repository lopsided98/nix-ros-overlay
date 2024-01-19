
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-sdk-examples";
  version = "3.7.51-r4";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/DynamixelSDK-release/archive/release/noetic/dynamixel_sdk_examples/3.7.51-4.tar.gz";
    name = "3.7.51-4.tar.gz";
    sha256 = "cdf263c504bef8621da2c23fb2aef0255eebe0c8966a29cd6169d0f3ac78223d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ dynamixel-sdk message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The DYNAMIXEL SDK ROS example package'';
    license = with lib.licenses; [ asl20 ];
  };
}
