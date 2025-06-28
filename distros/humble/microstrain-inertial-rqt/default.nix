
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rclpy, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-humble-microstrain-inertial-rqt";
  version = "4.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/humble/microstrain_inertial_rqt/4.7.0-1.tar.gz";
    name = "4.7.0-1.tar.gz";
    sha256 = "979c2034ad66a775cc6a93209b4814cccc1c61ac646938bbfa722d1febbe6145";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rclpy rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = "The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
