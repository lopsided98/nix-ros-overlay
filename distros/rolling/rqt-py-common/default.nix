
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, python-qt-binding, qt-gui, qt5, rclpy, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rqt-py-common";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_py_common/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "8875bc6f558a07b9701c299af863d8504e1e0ca189081d934feff1552a71c729";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common rosidl-default-generators rosidl-default-runtime ];
  propagatedBuildInputs = [ python-qt-binding qt-gui qt5.qtbase rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

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
