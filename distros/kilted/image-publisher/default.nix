
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-image-publisher";
  version = "6.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/kilted/image_publisher/6.0.11-1.tar.gz";
    name = "6.0.11-1.tar.gz";
    sha256 = "a884dcbdb00de9a27ef023ed1eee529880030a7580bf452be7566a82f530de34";
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
