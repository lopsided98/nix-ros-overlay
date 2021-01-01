
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui, rospy, rqt-gui }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui-py";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui_py/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "19e890bbce211050398d6eacf2298a2bbb92fd47b7ed3e91278b45b8044ca596";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui rospy rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
