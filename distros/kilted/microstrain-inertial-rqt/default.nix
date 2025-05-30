
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rclpy, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-microstrain-inertial-rqt";
  version = "4.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/kilted/microstrain_inertial_rqt/4.6.0-2.tar.gz";
    name = "4.6.0-2.tar.gz";
    sha256 = "100457da68cc8509285195bbaf648a7ee3f7e76180699c05174774f371f9b8c6";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rclpy rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = "The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
