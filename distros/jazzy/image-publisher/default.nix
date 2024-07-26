
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-image-publisher";
  version = "5.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/image_publisher/5.0.3-1.tar.gz";
    name = "5.0.3-1.tar.gz";
    sha256 = "45d1ff9e22d2d724ab8d069f29710356cacc018fe087f7cef5e828ec4f696182";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Contains a node publish an image stream from single image file
      or avi motion file.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
