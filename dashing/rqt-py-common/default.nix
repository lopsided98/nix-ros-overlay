
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, python-qt-binding, rclpy, rosidl-default-generators, qt-gui, qt5, rosidl-default-runtime }:
buildRosPackage rec {
  pname = "ros-dashing-rqt-py-common";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/dashing/rqt_py_common/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "2a9557efde2e471bac04ff2eee55db31f2d30ece0b3ab70603622d56e0094c3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclpy qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ];
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
