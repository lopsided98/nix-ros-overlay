
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ur-description";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/melodic/ur_description/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "54424cf0c2c6bcb0bb46c36b30f2a639bdcd6202feacd3b578bc3c1fd198a2b5";
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
