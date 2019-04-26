
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, urdf, robot-state-publisher, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-heron-description";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_description/0.3.1-0.tar.gz;
    sha256 = "d566ac820693cbcce3ddf64a4ed8520f0f44dd31ac3491b565d5f39429e32269";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Heron'';
    #license = lib.licenses.BSD;
  };
}
