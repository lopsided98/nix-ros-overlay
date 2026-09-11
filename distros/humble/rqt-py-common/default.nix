
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, python-cmake-module, python-qt-binding, qt-gui, qt5, rclpy, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rqt-py-common";
  version = "1.1.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/humble/rqt_py_common/1.1.10-2.tar.gz";
    name = "1.1.10-2.tar.gz";
    sha256 = "9d91108ab5cb40487d94a699dd0da054c08b5eb7b3b1cfaa4b7fd0d776d16453";
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
    should not introduce any special dependencies beside \"ros_base\".";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
