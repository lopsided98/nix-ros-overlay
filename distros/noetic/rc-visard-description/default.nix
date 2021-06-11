
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-noetic-rc-visard-description";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_visard_description/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "9de1f4de29c30df9ca0ee2e1f3acc485322741d2162b2f42a8e34c010f8a060c";
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
