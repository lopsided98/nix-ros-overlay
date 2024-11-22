
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, python-qt-binding, qt-gui, qt5, rclpy, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rqt-py-common";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_py_common/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "86a3b855d5fcc94c77fa07ff5de6cc2a1f3b523bd390d9428a4decb2542419fc";
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
