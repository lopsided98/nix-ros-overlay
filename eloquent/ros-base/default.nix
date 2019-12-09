
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry2, urdf, robot-state-publisher, ament-cmake, ros-core, kdl-parser }:
buildRosPackage {
  pname = "ros-eloquent-ros-base";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/eloquent/ros_base/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "cf4509740c11b50b8267f3fd0e2a2598e6470e69045c5e70243fbc009845e7b6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry2 urdf robot-state-publisher ros-core kdl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.'';
    license = with lib.licenses; [ asl20 ];
  };
}
