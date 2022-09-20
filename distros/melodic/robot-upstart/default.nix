
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, daemontools, nettools, roslaunch, roslint, rosunit, util-linux, xacro }:
buildRosPackage {
  pname = "ros-melodic-robot-upstart";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/melodic/robot_upstart/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "5c691943bed1f9d4c20a817d902bd00460705f7836d6fc2f3142de8f1c4c8153";
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
