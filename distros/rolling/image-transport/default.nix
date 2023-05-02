
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-image-transport";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_transport/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "d88cd925e7cfee95486040c66b6241956e5865c890e4790b3568b64af119523e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
