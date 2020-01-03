
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, urdf }:
buildRosPackage {
  pname = "ros-eloquent-ros-base";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/eloquent/ros_base/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "9059c2ffe0b1c4081b209f9f3c777af54db276d2f184dff32f13f868aeccfdf8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry2 kdl-parser robot-state-publisher ros-core urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.'';
    license = with lib.licenses; [ asl20 ];
  };
}
