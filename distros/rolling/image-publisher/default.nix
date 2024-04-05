
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-image-publisher";
  version = "5.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/image_publisher/5.0.1-1.tar.gz";
    name = "5.0.1-1.tar.gz";
    sha256 = "b32f2b650a77a9bd21bcd36cef34bb0835c456d74f16de1a537504a87d0afd5a";
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
