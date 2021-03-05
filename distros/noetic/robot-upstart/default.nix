
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, daemontools, nettools, roslaunch, roslint, rosunit, xacro }:
buildRosPackage {
  pname = "ros-noetic-robot-upstart";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/noetic/robot_upstart/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "2d3beafd758405574d42425cc0515e3a6918cb0cb423bca696cd49ee319837e9";
  };

  buildType = "catkin";
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ daemontools nettools roslaunch xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_upstart package provides scripts which may be used to install
    and uninstall Ubuntu Linux upstart jobs which launch groups of roslaunch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
