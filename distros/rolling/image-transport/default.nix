
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-image-transport";
  version = "5.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_transport/5.3.2-1.tar.gz";
    name = "5.3.2-1.tar.gz";
    sha256 = "63e31f56780c7a8b38ef918bc7f7be4fcbc89dec951239d0ec60fbc8ae77acfe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
