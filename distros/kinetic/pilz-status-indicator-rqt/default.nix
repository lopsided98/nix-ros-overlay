
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-hardware-support, pythonPackages, rospy, rostest, rosunit, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pilz-status-indicator-rqt";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_status_indicator_rqt/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "6d211e7792fa67d359f0b0d2e006c2db05152e9af5af248b0de1e0fe4e3970d1";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock rostest rosunit ];
  propagatedBuildInputs = [ prbt-hardware-support rospy rqt-gui rqt-gui-py std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Showing information about operation mode, status and speed override of the robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
