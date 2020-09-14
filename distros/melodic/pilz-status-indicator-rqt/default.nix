
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-hardware-support, pythonPackages, rospy, rostest, rosunit, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-status-indicator-rqt";
  version = "0.5.19-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_status_indicator_rqt/0.5.19-1.tar.gz";
    name = "0.5.19-1.tar.gz";
    sha256 = "cae8a608ad88ab9e42e424d31e5e3fa73d562a23d28aea30b11e2ea7a7a84716";
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
