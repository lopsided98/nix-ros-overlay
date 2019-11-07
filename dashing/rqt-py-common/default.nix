
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, python-qt-binding, rclpy, rosidl-default-generators, python-cmake-module, qt-gui, qt5, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-rqt-py-common";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/dashing/rqt_py_common/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "def9938b7298af79e2e3f9453823327db15138bec526c6495abf5f10839dad0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclpy qt5.qtbase ];
  checkInputs = [ python-cmake-module ament-cmake-pytest ];
  propagatedBuildInputs = [ python-qt-binding rclpy qt5.qtbase qt-gui rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''rqt_py_common provides common functionality for rqt plugins written in Python.
    Despite no plugin is provided, this package is part of the rqt_common_plugins
    repository to keep refactoring generic functionality from these common plugins
    into this package as easy as possible.

    Functionality included in this package should cover generic ROS concepts and
    should not introduce any special dependencies beside &quot;ros_base&quot;.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
