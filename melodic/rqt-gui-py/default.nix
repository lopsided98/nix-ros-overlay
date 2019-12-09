
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rospy, qt-gui, catkin }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui-py";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui_py/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "0ff83fecf2965173c22e185ba5388c38645c281a5aa89dbe3baac46c431eece6";
  };

  buildType = "catkin";
  buildInputs = [ rqt-gui rospy qt-gui ];
  propagatedBuildInputs = [ rqt-gui rospy qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
