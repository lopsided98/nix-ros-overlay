
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, motion-capture-tracking-interfaces, pcl, rclcpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-motion-capture-tracking";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/rolling/motion_capture_tracking/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "f8fc715b6d3d671e8692a7a73bcf324517d2d9ac0b8af3c0792ffc078ec8855c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module motion-capture-tracking-interfaces pcl rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS Package for different motion capture systems, including custom rigid body tracking support'';
    license = with lib.licenses; [ mit ];
  };
}
