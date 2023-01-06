
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-rolling-ros-base";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/ros_base/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "d48eb81e4163c748bd57fcb390bf86d93e4056d81d9cd18eb412ae9d5695fb79";
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
