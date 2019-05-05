
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, catkin, rqt-gui, rviz, rqt-gui-cpp, qt5 }:
buildRosPackage {
  pname = "ros-lunar-rqt-rviz";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_rviz-release/archive/release/lunar/rqt_rviz/0.6.0-0.tar.gz;
    sha256 = "a0d946d62d9cdc4476fc62548336cbbabaf1acdd5fcad16aa0b98af1369d9d87";
  };

  buildInputs = [ pluginlib boost rqt-gui qt5.qtbase rviz rqt-gui-cpp ];
  propagatedBuildInputs = [ pluginlib boost rqt-gui rviz rqt-gui-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_rviz provides a GUI plugin embedding <a href="http://www.ros.org/wiki/rviz">RViz</a>.
    Note that this rqt plugin does NOT supersede RViz but depends on it.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
