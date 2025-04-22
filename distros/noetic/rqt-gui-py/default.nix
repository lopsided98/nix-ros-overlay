
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, qt-gui, rospy, rqt-gui }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui-py";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui_py/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "f8ef25e81dcdc4fb9eb11377be28701a653cfe8502b93883de8456bc86f2f2e7";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ qt-gui rospy rqt-gui ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
