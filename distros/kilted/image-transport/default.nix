
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-image-transport";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/kilted/image_transport/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "c1c51e776cc75dc7870e2cfd05b888df5d67445b5ed66e09aeeb5d5b5798f3e3";
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
