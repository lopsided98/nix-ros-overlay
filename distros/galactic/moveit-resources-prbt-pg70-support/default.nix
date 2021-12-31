
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-moveit-config, moveit-resources-prbt-support, xacro }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-prbt-pg70-support";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_resources_prbt_pg70_support/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "d554b1f0081d4ffffd2ffab8cfe2ee08634c1ca3b8837c7ab100793fa7408d2a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ moveit-resources-prbt-ikfast-manipulator-plugin moveit-resources-prbt-moveit-config moveit-resources-prbt-support xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
