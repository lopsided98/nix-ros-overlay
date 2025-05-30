
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rclpy, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-humble-microstrain-inertial-rqt";
  version = "4.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/humble/microstrain_inertial_rqt/4.6.1-1.tar.gz";
    name = "4.6.1-1.tar.gz";
    sha256 = "c3a22faafb3c7ecc822ff2d38a88f16799aacc0d6abd003cb134493aec8c7f3a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rclpy rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = "The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
