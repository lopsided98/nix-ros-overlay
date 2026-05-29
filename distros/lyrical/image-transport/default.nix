
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-image-transport";
  version = "6.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/lyrical/image_transport/6.4.9-1.tar.gz";
    name = "6.4.9-1.tar.gz";
    sha256 = "edd54ce8b25afbd9e9a8761edc19a0dc8357d4cf00061325ddca372e15b7fd90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ message-filters pluginlib rclcpp rclcpp-components sensor-msgs tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.";
    license = with lib.licenses; [ bsd3 ];
  };
}
