
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, roscpp, rosmon-msgs, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-kinetic-rqt-rosmon";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/kinetic/rqt_rosmon/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "d8e64676a5edea223fc9e9ac19b78d2f4e79ed41c6049b0ab7eadb45bb5fc1bf";
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
