
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, urdf, robot-state-publisher, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-heron-description";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_description/0.3.0-0.tar.gz;
    sha256 = "a3d4e5015eea784f70d45912f6519423727e86ada4d622ecb10898f1f71c3c09";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Heron'';
    #license = lib.licenses.BSD;
  };
}
