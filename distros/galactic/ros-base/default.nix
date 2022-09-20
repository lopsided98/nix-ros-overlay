
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-galactic-ros-base";
  version = "0.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/galactic/ros_base/0.9.3-2.tar.gz";
    name = "0.9.3-2.tar.gz";
    sha256 = "f1df1cd8decda8ddcb250fdbb31a24c2b7decdd5398fb2922d88c012a0be9c81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry2 kdl-parser robot-state-publisher ros-core rosbag2 urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.'';
    license = with lib.licenses; [ asl20 ];
  };
}
