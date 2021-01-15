
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-moose-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose-release/archive/release/kinetic/moose_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "b186388f48dc5a1ea8df9275ed8ee33992af0f7f19adca4f30a7631aa291d5a1";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
