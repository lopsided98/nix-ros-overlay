
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ur-description";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_description/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "27695dd079d7b005f3e0ed09ac2b3604af7df1c531ba7c22a795659af3784ba9";
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
