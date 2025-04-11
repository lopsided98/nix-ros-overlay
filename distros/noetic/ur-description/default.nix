
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ur-description";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_description/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "1b0b6af27fdadc1bd47b32c130f12605176e46b67ea44c2811614f6436d9ee22";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher-gui robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "URDF description for Universal UR3(e), UR5(e), UR10(e), UR16e, UR20 and UR30 robots";
    license = with lib.licenses; [ bsdOriginal "Universal-Robots-A-S'-Terms-and-Conditions-for-Use-of-Graphical-Documentation" "Universal-Robots-A-S'-Terms-and-Conditions-for-Use-of-Graphical-Documentation" ];
  };
}
