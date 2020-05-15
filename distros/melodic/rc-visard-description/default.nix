
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-melodic-rc-visard-description";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard_description/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d2a30bc1ad622de9bff967b1ad554e9746a0fecf3d0bda1532039f6888915df0";
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
