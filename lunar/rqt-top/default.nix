
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-top";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_top-release/archive/release/lunar/rqt_top/0.4.8-0.tar.gz;
    sha256 = "174e6c9957adbebb06ea473dde5f3c9aa4b830d5653d4fc7e91af67be42f1253";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.psutil rqt-gui rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
