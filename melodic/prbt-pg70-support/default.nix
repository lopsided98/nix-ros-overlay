
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, prbt-moveit-config, schunk-description, prbt-ikfast-manipulator-plugin, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-pg70-support";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_pg70_support/0.0.1-0.tar.gz;
    sha256 = "0baa13c05cfc769fb079cf7977767c2dc6ead50de092cd014a04e12b3e3b0ee3";
  };

  propagatedBuildInputs = [ prbt-support prbt-moveit-config xacro schunk-description prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    #license = lib.licenses.Apache 2.0;
  };
}
