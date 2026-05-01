
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-prbt-support";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_resources_prbt_support/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "baf112556a40bdd8fcf6c4f666e342d5cf47385e66b6c2731d378abc4de982e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.";
    license = with lib.licenses; [ asl20 ];
  };
}
