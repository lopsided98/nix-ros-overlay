
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, python-qt-binding, qt-gui, qt6, rclpy, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-rqt-py-common";
  version = "1.10.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/lyrical/rqt_py_common/1.10.4-3.tar.gz";
    name = "1.10.4-3.tar.gz";
    sha256 = "5ab06fbd658bae69946d0d1387206d9e7a744dce847613aab050a2b7261c6527";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common rosidl-default-generators rosidl-default-runtime ];
  propagatedBuildInputs = [ python-qt-binding qt-gui qt6.qtbase rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

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
