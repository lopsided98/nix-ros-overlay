
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rclpy, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-microstrain-inertial-rqt";
  version = "4.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/jazzy/microstrain_inertial_rqt/4.6.1-1.tar.gz";
    name = "4.6.1-1.tar.gz";
    sha256 = "2fa923c1fe818f7f031cf191989f054b478d6ae836795eb1cb051d49dcc478f2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rclpy rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = "The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
