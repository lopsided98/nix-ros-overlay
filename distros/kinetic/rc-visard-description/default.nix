
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard-description";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard_description/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "eb081f5b195b4bedf091956caeaf9182af47d62dd12bbc37d6899c27ce9e6345";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization package for rc_visard'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
