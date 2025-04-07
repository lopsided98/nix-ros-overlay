
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-image-publisher";
  version = "5.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/image_publisher/5.0.9-1.tar.gz";
    name = "5.0.9-1.tar.gz";
    sha256 = "147e87cce44b926fc39e2c7bc2da6dc97eebbfbe7102a81b473b3c499dcdd930";
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
