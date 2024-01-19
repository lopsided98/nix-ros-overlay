
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-gui-py-common, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-publisher";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/humble/rqt_publisher/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "96f9ca2d88195de9faa4997076b6a935322fa9ef7defc6ff22b6111b29c99c64";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui-py-common rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
