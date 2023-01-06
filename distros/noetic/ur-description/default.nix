
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ur-description";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_description/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "845fa20c6d5eba1e14b1bd069bac23247dbcf0c49505f5a9023c6b9019888b5f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher-gui robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Universal UR3(e), UR5(e), UR10(e) and UR16e robots'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
