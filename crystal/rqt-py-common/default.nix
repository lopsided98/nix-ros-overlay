
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, python-qt-binding, qt-gui, qt5, rclpy, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-rqt-py-common";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/crystal/rqt_py_common/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "9aab24d68ce8ddf28c893ad4e015ee82092f937f456cbf904e8eba4bf7db4fcd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-gui qt5.qtbase rclpy rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

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
