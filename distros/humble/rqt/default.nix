
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt";
  version = "1.1.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/humble/rqt/1.1.10-2.tar.gz";
    name = "1.1.10-2.tar.gz";
    sha256 = "f64fb9adf5598c0dff0046015c4f27d0e4543c87f53c0795b063cf9bb6362ddb";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt is a Qt-based framework for GUI development for ROS. It consists of three parts/metapackages<br/>
    <ul>
     <li>rqt (you're here)</li>
     <li><a href=\"http://ros.org/wiki/rqt_common_plugins\">rqt_common_plugins</a> - ROS backend tools suite that can be used on/off of robot runtime.</li>
     <li><a href=\"http://ros.org/wiki/rqt_robot_plugins\">rqt_robot_plugins</a> - Tools for interacting with robots during their runtime.</li>
    </ul>
   rqt metapackage provides a widget <a href=\"http://ros.org/wiki/rqt_gui\">rqt_gui</a> that enables multiple `rqt` widgets to be docked in a single window.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
