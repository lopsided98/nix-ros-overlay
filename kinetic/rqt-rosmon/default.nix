
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-cpp, pluginlib, catkin, qt5, rosmon-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rqt-rosmon";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/kinetic/rqt_rosmon/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ba83db3aedef145609e8d9c89937a33a12866e2c6e1e6fe5b2d5bfb0d7b874a6";
  };

  buildType = "catkin";
  buildInputs = [ rqt-gui rqt-gui-cpp pluginlib qt5.qtbase rosmon-msgs roscpp ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp pluginlib rosmon-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt GUI for rosmon, the node launcher and monitor for ROS.
		rosmon is a replacement for the roslaunch tool, focused on performance,
		remote monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
