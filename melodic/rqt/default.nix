
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-py, catkin, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-melodic-rqt";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "0838063390001fcb552096bd5a6827aae9bb3105855cbdf0c2a3105a25851e67";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py rqt-gui rqt-gui-cpp ];
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
