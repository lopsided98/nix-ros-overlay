
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rclpy, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-microstrain-inertial-rqt";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/foxy/microstrain_inertial_rqt/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "46d85e5ef4fcc0886502283750e3245315f4ec72d782a3e2ee6410499ab3f026";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rclpy rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = ''The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
