
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-msgs, pythonPackages, rospy, rostest, rosunit, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-status-indicator-rqt";
  version = "0.5.21-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_status_indicator_rqt/0.5.21-1.tar.gz";
    name = "0.5.21-1.tar.gz";
    sha256 = "7aba436d2831b15c5cf14acefd26f47ab503eb7796ea40ba70727ad922793b79";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock rostest rosunit ];
  propagatedBuildInputs = [ pilz-msgs rospy rqt-gui rqt-gui-py std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Showing information about operation mode, status and speed override of the robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
