
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pluginlib, qt5, rqt-gui, rqt-gui-cpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-rqt-rviz";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_rviz-release/archive/release/noetic/rqt_rviz/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "6f5b15589e87d6a7776cd346a5e288b820467ad810302df31582300b0243bbf3";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ boost pluginlib rqt-gui rqt-gui-cpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_rviz provides a GUI plugin embedding <a href="http://www.ros.org/wiki/rviz">RViz</a>.
    Note that this rqt plugin does NOT supersede RViz but depends on it.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
