
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-kilted-moveit-resources-prbt-support";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_resources_prbt_support/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "01fdeadb51532109196d87d93e60d331ca4ca69609c08d7b23bd6dfbabd6db34";
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
