
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, roslaunch, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-gundam-rx78-description";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/melodic/gundam_rx78_description/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "4004070bbf315f396604e927dfe815feada9964aad421c3eb739706bb0705d18";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_rx78_description contains the ROS URDF file of the GUNDAM RX-78 robot'';
    license = with lib.licenses; [ "TERMS-OF-USE-FOR-GUNDAM-RESEARCH-OPEN-SIMULATOR-Attribution-NonCommercial-ShareAlike" bsdOriginal ];
  };
}
