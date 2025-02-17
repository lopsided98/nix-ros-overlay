
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-sdk-examples";
  version = "3.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/DynamixelSDK-release/archive/release/noetic/dynamixel_sdk_examples/3.8.0-1.tar.gz";
    name = "3.8.0-1.tar.gz";
    sha256 = "7b7badaab4280a1b6b4ecdbecfdaa134019cac877724cd4dc0336df20375dc9f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ dynamixel-sdk message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The DYNAMIXEL SDK ROS example package";
    license = with lib.licenses; [ asl20 ];
  };
}
