
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rqt-gui, rqt-gui-cpp, qt5, roscpp, rosmon-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-rosmon";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/melodic/rqt_rosmon/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "6a2ccef7322bbeac942798d820361f7d17adfd2fad7bbfce6e588e2fa43e672d";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib rqt-gui qt5.qtbase rqt-gui-cpp roscpp rosmon-msgs ];
  propagatedBuildInputs = [ pluginlib rqt-gui rqt-gui-cpp roscpp rosmon-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt GUI for rosmon, the node launcher and monitor for ROS.
		rosmon is a replacement for the roslaunch tool, focused on performance,
		remote monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
