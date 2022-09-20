
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, rqt-logger-level, rqt-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-console";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_console-release/archive/release/melodic/rqt_console/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "e01cb923bec977383fddbb9ee64baf50ceb167645989b018c4fa47acf43db003";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py rqt-logger-level rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
