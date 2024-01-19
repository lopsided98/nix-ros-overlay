
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-rolling-ros-base";
  version = "0.10.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/ros_base/0.10.0-2.tar.gz";
    name = "0.10.0-2.tar.gz";
    sha256 = "6bb41f2fe8d7d7a281e76a63d48488d06fa0932d4a715581e973f8ffce3298f4";
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
