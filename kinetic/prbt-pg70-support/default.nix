
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, prbt-moveit-config, schunk-description, prbt-ikfast-manipulator-plugin, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-prbt-pg70-support";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/kinetic/prbt_pg70_support/0.0.2-0.tar.gz;
    sha256 = "b0d8b753a37da28edef49ccc5cb5f628ba0df2d01b1c222c0ccf1c851a99d5ef";
  };

  propagatedBuildInputs = [ prbt-support prbt-moveit-config xacro schunk-description prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    #license = lib.licenses.Apache 2.0;
  };
}
