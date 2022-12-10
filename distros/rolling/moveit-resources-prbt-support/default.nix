
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-prbt-support";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/rolling/moveit_resources_prbt_support/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "add69e07b19862edf50c327a6e4b612bc27853900df1d5e65f71558d9c8189fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
