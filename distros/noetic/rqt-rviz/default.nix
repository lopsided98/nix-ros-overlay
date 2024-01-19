
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, pluginlib, qt5, rqt-gui, rqt-gui-cpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-rqt-rviz";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_rviz-release/archive/release/noetic/rqt_rviz/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "a654c09013c36efb408a635700dbd62bf8c37da8f9a5c53aaefe790a49fc7ad7";
  };

  buildType = "catkin";
  buildInputs = [ catkin class-loader qt5.qtbase ];
  propagatedBuildInputs = [ boost pluginlib rqt-gui rqt-gui-cpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_rviz provides a GUI plugin embedding <a href="http://www.ros.org/wiki/rviz">RViz</a>.
    Note that this rqt plugin does NOT supersede RViz but depends on it.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
