
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-rolling-ros-base";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/ros_base/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "4d9d73b1293c3b3bff2465806f8ef875a0caaf0ce49a68aef0d455486ab0b412";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry2 kdl-parser robot-state-publisher ros-core rosbag2 urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.";
    license = with lib.licenses; [ asl20 ];
  };
}
