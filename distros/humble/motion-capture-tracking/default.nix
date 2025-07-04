
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, motion-capture-tracking-interfaces, pcl, rclcpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-motion-capture-tracking";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/humble/motion_capture_tracking/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "9848cae38ee70ad2687a3d49116ad66ad566f9e0dc72d675c43010a24b06137e";
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
