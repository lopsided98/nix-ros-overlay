
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui, rospy, rqt-gui }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui-py";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui_py/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "e674a55bdf18c63086832699590e7948da1021e8d56a89b0c79a68acb2c00799";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt-gui rospy rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
