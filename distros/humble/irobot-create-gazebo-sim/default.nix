
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-gazebo-bringup, irobot-create-gazebo-plugins }:
buildRosPackage {
  pname = "ros-humble-irobot-create-gazebo-sim";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_gazebo_sim/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d3e0a73b63c911e7200efa44a0b81c4be0a26cdc3a9a9152d2c72b89480f9bd7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ irobot-create-gazebo-bringup irobot-create-gazebo-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for the iRobot(R) Create(R) 3 robot Gazebo simulator<a href="http://gazebosim.org/">Gazebo</a> simulation stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
