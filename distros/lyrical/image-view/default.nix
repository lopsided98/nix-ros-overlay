
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-calibration-parsers, cv-bridge, image-transport, message-filters, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-lyrical-image-view";
  version = "7.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/lyrical/image_view/7.1.3-3.tar.gz";
    name = "7.1.3-3.tar.gz";
    sha256 = "80bafc41283c6352915ff6b09690e2617e83b1e5b1c8f2fadef76b770cca11cc";
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
