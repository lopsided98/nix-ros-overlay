
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-common-bringup, irobot-create-control, irobot-create-description, irobot-create-gazebo-bringup, irobot-create-gazebo-plugins, irobot-create-nodes }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-gazebo-sim";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_gazebo_sim/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d1bc88502efe404a34c4e3e1373bca5ec5ae24768fef2c48bef7cd5685566363";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ irobot-create-common-bringup irobot-create-control irobot-create-description irobot-create-gazebo-bringup irobot-create-gazebo-plugins irobot-create-nodes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for the iRobot(R) Create(R) 3 robot Gazebo simulator<a href="http://gazebosim.org/">Gazebo</a> simulation stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
