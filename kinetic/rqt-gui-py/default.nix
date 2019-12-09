
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rospy, qt-gui, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rqt-gui-py";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/kinetic/rqt_gui_py/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "5562a8e2a995ecde75a3fc7ae8cb824b905d25d8de32f11172723087fd7847f7";
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
