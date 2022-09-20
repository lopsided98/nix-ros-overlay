
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-sdk-examples";
  version = "3.7.51-r4";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/DynamixelSDK-release/archive/release/melodic/dynamixel_sdk_examples/3.7.51-4.tar.gz";
    name = "3.7.51-4.tar.gz";
    sha256 = "3a0fe8ed9053aaa5d2eae92dd76596a5d9d2917d8296733f5a3c4a842112ece2";
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
