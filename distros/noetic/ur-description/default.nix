
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ur-description";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_description/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "338edcac4e2520990ed501c3043d4c89090d089951eafa251994d68954ab5e50";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher-gui robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "URDF description for Universal UR3(e), UR5(e), UR7e, UR10(e), UR12e UR16e, UR15, UR20 and UR30 robots";
    license = with lib.licenses; [ bsdOriginal "Universal-Robots-A-S'-Terms-and-Conditions-for-Use-of-Graphical-Documentation" "Universal-Robots-A-S'-Terms-and-Conditions-for-Use-of-Graphical-Documentation" "Universal-Robots-A-S'-Terms-and-Conditions-for-Use-of-Graphical-Documentation" ];
  };
}
