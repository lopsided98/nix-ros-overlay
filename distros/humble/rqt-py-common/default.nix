
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, python-cmake-module, python-qt-binding, qt-gui, qt5, rclpy, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rqt-py-common";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/humble/rqt_py_common/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "3e3abc0d8f553acb5128ce7ebe47710672a280b7e8642e38a66cb0331f9c07a8";
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
