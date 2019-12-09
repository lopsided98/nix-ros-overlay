
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-state-publisher, catkin, ur-driver, ur-description, roslaunch, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-ur-bringup";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_bringup/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "44ae9c26b209fdec9646ae9ee5a62c00a76ddfe0a6f5c754c2a8ebc76b8ae643";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher ur-driver tf2-ros ur-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ur_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
