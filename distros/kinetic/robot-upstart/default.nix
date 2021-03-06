
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, daemontools, nettools, roslaunch, roslint, rosunit, xacro }:
buildRosPackage {
  pname = "ros-kinetic-robot-upstart";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/kinetic/robot_upstart/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "dc09fc57b4f7a187139ccd3c554e4ae12727f8ba2549ea421807fbb23ab7ec16";
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
