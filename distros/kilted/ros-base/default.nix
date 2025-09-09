
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-kilted-ros-base";
  version = "0.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/kilted/ros_base/0.12.0-2.tar.gz";
    name = "0.12.0-2.tar.gz";
    sha256 = "d694bf677267ea460e1a151828d3ffd6f6129241e81fee8019ea6f4cfb336bf8";
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
