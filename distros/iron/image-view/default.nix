
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, boost, camera-calibration-parsers, cv-bridge, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-iron-image-view";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/iron/image_view/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "97c5dfe2f6e60edf71d7b3ae4e6c46a2f3b9aee06c9d3b19b143a44fc63d590a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost camera-calibration-parsers cv-bridge image-transport message-filters rclcpp rclcpp-components sensor-msgs std-srvs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
