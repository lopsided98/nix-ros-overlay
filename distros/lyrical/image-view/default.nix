
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-calibration-parsers, cv-bridge, image-transport, message-filters, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-lyrical-image-view";
  version = "7.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/lyrical/image_view/7.1.6-1.tar.gz";
    name = "7.1.6-1.tar.gz";
    sha256 = "91f037ba79b55c9f17036c5143681d0065fc262a963e4dd350947f49fc5d11bc";
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
