
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-crystal-rqt-gui";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/crystal/rqt_gui/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "4e256bfa84d8af087d1201e8e2564f34e2ea8642f6c3e35000be52f35d7404ac";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
