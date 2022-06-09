
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-moveit-config, moveit-resources-prbt-support, xacro }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-prbt-pg70-support";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_resources_prbt_pg70_support/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "e05f9abcfffe90909120980fb8dff7b1d50cff1b04f5fd2b040eaa1f8c61a2f6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ moveit-resources-prbt-ikfast-manipulator-plugin moveit-resources-prbt-moveit-config moveit-resources-prbt-support xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
