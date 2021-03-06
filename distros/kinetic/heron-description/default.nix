
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-heron-description";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_description/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "ff37a5729512e8cd7f2a7fdecc99b27441a62b165a584144a463c0e0719cfb71";
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
