
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-calibration-parsers, cv-bridge, image-transport, message-filters, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-kilted-image-view";
  version = "6.0.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/kilted/image_view/6.0.12-1.tar.gz";
    name = "6.0.12-1.tar.gz";
    sha256 = "fb88fb83bb84d18f14226f020954414b1425130224a7a8fc3e64e291cf19c524";
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
