
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, daemontools, roslaunch, roslint, rosunit, xacro }:
buildRosPackage {
  pname = "ros-melodic-robot-upstart";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/melodic/robot_upstart/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "a275ce760e7a19ed7b1f120e6b1a3e3c1043f35c5b9bc116a0ba9ed8a633531e";
  };

  buildType = "catkin";
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ daemontools roslaunch xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_upstart package provides scripts which may be used to install
    and uninstall Ubuntu Linux upstart jobs which launch groups of roslaunch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
