
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rqt-gui, rqt-gui-cpp, qt5, roscpp, rosmon-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-rosmon";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/xqms/rosmon-release/archive/release/melodic/rqt_rosmon/2.0.2-0.tar.gz;
    sha256 = "f1c00e5e565787c151b3d90332c78084c3baf96052bff2886aa45b6969749dd5";
  };

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
