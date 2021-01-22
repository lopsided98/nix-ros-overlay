
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-heron-description";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/melodic/heron_description/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "1c381c2f5386fb22014eb10112ba4601c0bb76ac7a37db77e78b162ee6b7877c";
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
