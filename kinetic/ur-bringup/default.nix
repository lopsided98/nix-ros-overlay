
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ur-description, catkin, tf2-ros, robot-state-publisher, ur-driver, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-ur-bringup";
  version = "1.2.5";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_bringup/1.2.5-0.tar.gz";
    name = "1.2.5-0.tar.gz";
    sha256 = "b9e6e4a20ab54a3923e03b858bbdd4230e960681ebd619007a66ded9334908ea";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ ur-driver tf2-ros robot-state-publisher ur-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ur_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
