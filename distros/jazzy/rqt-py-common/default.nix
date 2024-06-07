
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, python-cmake-module, python-qt-binding, qt-gui, qt5, rclpy, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rqt-py-common";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/jazzy/rqt_py_common/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "f54fa1691d5e0c529f1dcfd418fe687839718cc5dde021c2d47b45a8da416f0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python-cmake-module rosidl-default-generators rosidl-default-runtime ];
  propagatedBuildInputs = [ python-qt-binding qt-gui qt5.qtbase rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_py_common provides common functionality for rqt plugins written in Python.
    Despite no plugin is provided, this package is part of the rqt_common_plugins
    repository to keep refactoring generic functionality from these common plugins
    into this package as easy as possible.

    Functionality included in this package should cover generic ROS concepts and
    should not introduce any special dependencies beside &quot;ros_base&quot;.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
