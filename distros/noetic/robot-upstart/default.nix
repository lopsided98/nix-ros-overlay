
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, daemontools, nettools, roslaunch, roslint, rosunit, util-linux, xacro }:
buildRosPackage {
  pname = "ros-noetic-robot-upstart";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/noetic/robot_upstart/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "3c22f90aa2a8fb62bfb8826fe47b3a3f10a58f3afa5012825e33272d21d5edb3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ daemontools nettools roslaunch util-linux xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_upstart package provides scripts which may be used to install
    and uninstall Ubuntu Linux upstart jobs which launch groups of roslaunch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
