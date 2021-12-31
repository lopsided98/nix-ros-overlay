
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rclpy, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-microstrain-inertial-rqt";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-ros2-release/archive/release/foxy/microstrain_inertial_rqt/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "3b5737aadd5c7f8e4d0125cfa876d97e4885a70da2abeb9443eec4c326c46e24";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rclpy rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = ''The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
