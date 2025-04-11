
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, pluginlib, qt5, rqt-gui, rqt-gui-cpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-rqt-rviz";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_rviz-release/archive/release/noetic/rqt_rviz/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "10f6557efe52f4a0ba3713f584a23bb713424459c3283485267b7f0ea2ed2023";
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
