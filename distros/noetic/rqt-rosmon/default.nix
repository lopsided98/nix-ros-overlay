
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, roscpp, rosmon-msgs, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-noetic-rqt-rosmon";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/noetic/rqt_rosmon/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "828d7c361bb2134b8c188756cb51af94cee9129d741da2233726d877fd05542a";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib roscpp rosmon-msgs rqt-gui rqt-gui-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt GUI for rosmon, the node launcher and monitor for ROS.
		rosmon is a replacement for the roslaunch tool, focused on performance,
		remote monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
