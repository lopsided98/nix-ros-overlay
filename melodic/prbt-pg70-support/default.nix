
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, prbt-moveit-config, schunk-description, prbt-ikfast-manipulator-plugin, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-pg70-support";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_pg70_support/0.0.2-0.tar.gz;
    sha256 = "05d1f3f04d2ac670d8aeea9bfac210e50f4fa562cc247a49b559c9527e840371";
  };

  propagatedBuildInputs = [ prbt-support prbt-moveit-config xacro schunk-description prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    #license = lib.licenses.Apache 2.0;
  };
}
