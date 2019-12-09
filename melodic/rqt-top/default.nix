
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, pythonPackages, catkin, rqt-gui-py, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-top";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_top-release/archive/release/melodic/rqt_top/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "06a64dcb66e010ec7fa6e474dcd0b50efac71516ecb6a247c38652d309ee7c8a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rospy pythonPackages.psutil python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
