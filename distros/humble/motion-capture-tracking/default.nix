
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, motion-capture-tracking-interfaces, pcl, rclcpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-motion-capture-tracking";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/humble/motion_capture_tracking/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "e453b522cc0d7cc301f50034f793420ad73dd562f308e9251045953ce97af666";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module motion-capture-tracking-interfaces pcl rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Package for different motion capture systems, including custom rigid body tracking support";
    license = with lib.licenses; [ mit ];
  };
}
