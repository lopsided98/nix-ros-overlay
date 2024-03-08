
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rclpy, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-microstrain-inertial-rqt";
  version = "3.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/rolling/microstrain_inertial_rqt/3.2.1-2.tar.gz";
    name = "3.2.1-2.tar.gz";
    sha256 = "f6925dfba9f1e74a5021d86ca2fc17f338f41e74d6fb1dc45603ef29b6834daf";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rclpy rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = ''The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
