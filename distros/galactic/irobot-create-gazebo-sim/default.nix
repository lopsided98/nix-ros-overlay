
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-gazebo-bringup, irobot-create-gazebo-plugins }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-gazebo-sim";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_gazebo_sim/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d7c55ecbf3bc0c9f71cb7e5bcbc0e07f59f73fec6f4f5584af93df28ddfd5ae5";
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
