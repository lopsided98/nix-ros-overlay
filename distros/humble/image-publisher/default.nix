
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-image-publisher";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/humble/image_publisher/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "9248620366b319100e84aedfca91f4961eaee808ac6fe72c58c6477f03a40485";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Contains a node publish an image stream from single image file
      or avi motion file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
