
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, roscpp, rosmon-msgs, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-noetic-rqt-rosmon";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/noetic/rqt_rosmon/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "bd616519f9e479b01f3815009a69f594683dd99198bbfe8ebeea4328e5579f64";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib roscpp rosmon-msgs rqt-gui rqt-gui-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt GUI for rosmon, the node launcher and monitor for ROS.
		rosmon is a replacement for the roslaunch tool, focused on performance,
		remote monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
