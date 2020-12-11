
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, urdf }:
buildRosPackage {
  pname = "ros-eloquent-ros-base";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/eloquent/ros_base/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "1cda2d51a30fbece5588cdeed1138a3b65636339262c54134a6f832efe4fb9fe";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry2 kdl-parser robot-state-publisher ros-core urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.'';
    license = with lib.licenses; [ asl20 ];
  };
}
