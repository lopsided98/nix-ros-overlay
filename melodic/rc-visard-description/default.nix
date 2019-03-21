
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-rc-visard-description";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard_description/2.5.0-0.tar.gz;
    sha256 = "2e824c7bf43dcb567b32bdd999fdc3a2066bbfdf0efa4af3d0124c731bbdcd27";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization package for rc_visard'';
    #license = lib.licenses.BSD;
  };
}
