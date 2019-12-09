
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-cpp, pluginlib, catkin, qt5, rosmon-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rqt-rosmon";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/melodic/rqt_rosmon/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "5c36fe953743b65dbd9f9f59ea29f158f62a37316c14afdd6d5dee214f9c35aa";
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
