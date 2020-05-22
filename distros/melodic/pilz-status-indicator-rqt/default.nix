
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-hardware-support, pythonPackages, rospy, rostest, rosunit, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-status-indicator-rqt";
  version = "0.5.16-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_status_indicator_rqt/0.5.16-1.tar.gz";
    name = "0.5.16-1.tar.gz";
    sha256 = "0f3be1b7a4827a19a1d94ebace29d24561799b7fe0aa8264e64cb8662f6f13d9";
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
