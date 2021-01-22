
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-heron-description";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_description/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "01c01835d8ae989155db69b46aee38c0fff65f2cad0c12e92c0fee9d67c581f0";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
