
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-lyrical-ros-base";
  version = "0.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/lyrical/ros_base/0.13.0-3.tar.gz";
    name = "0.13.0-3.tar.gz";
    sha256 = "eed0d841684e72dfc04aa767620b8748fc74baece3761fd440610ea9fb50a22d";
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
