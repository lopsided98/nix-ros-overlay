
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, robot-state-publisher, ament-cmake, tf2-eigen, ros-core, tf2-geometry-msgs, tf2, tf2-ros, kdl-parser }:
buildRosPackage {
  pname = "ros-crystal-ros-base";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/crystal/ros_base/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "f4024e4d573f5137a6c5d7865bdd4ea69875a111db2c4938b7995da59c8d4932";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ urdf robot-state-publisher tf2-eigen ros-core tf2-geometry-msgs tf2 tf2-ros kdl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.'';
    license = with lib.licenses; [ asl20 ];
  };
}
