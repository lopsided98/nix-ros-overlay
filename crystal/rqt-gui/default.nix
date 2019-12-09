
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-lint-common, ament-lint-auto, qt-gui, rclpy, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-crystal-rqt-gui";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/crystal/rqt_gui/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "4e256bfa84d8af087d1201e8e2564f34e2ea8642f6c3e35000be52f35d7404ac";
  };

  buildType = "ament_python";
  buildInputs = [ qt-gui ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ qt-gui rclpy python3Packages.catkin-pkg ament-index-python python-qt-binding ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
