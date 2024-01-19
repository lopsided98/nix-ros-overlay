
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, boost, camera-calibration-parsers, cv-bridge, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-humble-image-view";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/humble/image_view/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "4bbbe7dc4b7f79f04a6b2587dce463870d059857b26069e1122a6b8178ec4c00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost camera-calibration-parsers cv-bridge image-transport message-filters rclcpp rclcpp-components sensor-msgs std-srvs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
