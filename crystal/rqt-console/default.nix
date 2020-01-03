
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, python-qt-binding, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-crystal-rqt-console";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/crystal/rqt_console/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "394aa4341e913abde53c085889f1a314d4dc7f8bf6d0eaf33ab6f9ab582e0979";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
