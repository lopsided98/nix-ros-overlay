
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, daemontools, nettools, roslaunch, roslint, rosunit, xacro }:
buildRosPackage {
  pname = "ros-melodic-robot-upstart";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/melodic/robot_upstart/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "63ba9b49a0439bb01b5f36bc0a25200b82751e9af2ba8a751a8a8de6e76ea121";
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
