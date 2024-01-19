
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-msgs, python3Packages, rospy, rostest, rosunit, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pilz-status-indicator-rqt";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/noetic/pilz_status_indicator_rqt/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "6a3b1821bf4b38214ed38d73e69d379432f322554df9cb79de991023c0848f90";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ python3Packages.mock rostest rosunit ];
  propagatedBuildInputs = [ pilz-msgs rospy rqt-gui rqt-gui-py std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Showing information about operation mode, status and speed override of the robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
