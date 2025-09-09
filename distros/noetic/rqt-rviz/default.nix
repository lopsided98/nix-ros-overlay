
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, pluginlib, qt5, rqt-gui, rqt-gui-cpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-rqt-rviz";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_rviz-release/archive/release/noetic/rqt_rviz/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "a9e7b53a3cb18317c0d0b7edd420cdd7c163bbaff3bdad694f96eabfe3d7fc33";
  };

  buildType = "catkin";
  buildInputs = [ catkin class-loader qt5.qtbase ];
  propagatedBuildInputs = [ boost pluginlib rqt-gui rqt-gui-cpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rqt_rviz provides a GUI plugin embedding <a href=\"http://www.ros.org/wiki/rviz\">RViz</a>.
    Note that this rqt plugin does NOT supersede RViz but depends on it.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
