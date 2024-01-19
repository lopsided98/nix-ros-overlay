
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support, schunk-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-prbt-pg70-support";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/PilzDE/prbt_grippers-release/archive/release/noetic/prbt_pg70_support/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "9b31e3222c15a3ef66fcbab83046465d7884e253ed7e827ac3a99f8690cdccd5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-moveit-config prbt-support schunk-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
