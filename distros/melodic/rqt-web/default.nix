
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-gui, rospy, rqt-gui, rqt-gui-py, webkit-dependency }:
buildRosPackage {
  pname = "ros-melodic-rqt-web";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_web-release/archive/release/melodic/rqt_web/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "3192e2e64f268d79b93d505bc475aa1f39009e75f645d294934d55c2b0b27303";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-gui rospy rqt-gui rqt-gui-py webkit-dependency ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_web is a simple web content viewer for rqt. Users can show web content in Qt-based window by specifying its URL.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
