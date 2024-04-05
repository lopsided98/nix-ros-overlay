
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-iron-image-publisher";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/iron/image_publisher/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "f354f5abd82dc5062d63fa59f2ae8cb39f2753991f466fdb54fdb03ccdc132cb";
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
