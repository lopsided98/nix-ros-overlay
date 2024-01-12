
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rqt-gui, rqt-gui-cpp, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "59d56c82e343c8dd90174fe2318b1c7245f76807c6d594cb834df9be769b44f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt is a Qt-based framework for GUI development for ROS. It consists of three parts/metapackages<br/>
    <ul>
     <li>rqt (you're here)</li>
     <li><a href="http://ros.org/wiki/rqt_common_plugins">rqt_common_plugins</a> - ROS backend tools suite that can be used on/off of robot runtime.</li>
     <li><a href="http://ros.org/wiki/rqt_robot_plugins">rqt_robot_plugins</a> - Tools for interacting with robots during their runtime.</li>
    </ul>
   rqt metapackage provides a widget <a href="http://ros.org/wiki/rqt_gui">rqt_gui</a> that enables multiple `rqt` widgets to be docked in a single window.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
