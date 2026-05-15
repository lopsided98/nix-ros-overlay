
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-calibration-parsers, cv-bridge, image-transport, message-filters, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-jazzy-image-view";
  version = "5.0.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/image_view/5.0.12-1.tar.gz";
    name = "5.0.12-1.tar.gz";
    sha256 = "f88b250ceef50a4201befb50b77aac7d79180f931b4420bd36af9af67b8777cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers cv-bridge image-transport message-filters rclcpp rclcpp-components rclpy sensor-msgs std-srvs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
