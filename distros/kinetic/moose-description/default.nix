
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-moose-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose-release/archive/release/kinetic/moose_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "9097fd1a806ccac394431d01cfe2a9fde0036bfc53ae3ef0ff10717261eeffe4";
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
