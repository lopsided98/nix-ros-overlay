
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ur-description";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_description/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "a325902df04bd741be68e8df82a97dbeec78d551379bf30e51181a7a5c72e450";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher-gui robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Universal UR3(e), UR5(e), UR10(e), UR16e and UR20 robots'';
    license = with lib.licenses; [ bsdOriginal "Universal-Robots-A-S'-Terms-and-Conditions-for-Use-of-Graphical-Documentation" ];
  };
}
