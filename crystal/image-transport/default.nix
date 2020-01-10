
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-crystal-image-transport";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/crystal/image_transport/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "80d28aee0a7cf9c2412f589e27638afab061a33740970935efeb990c31cea010";
  };

  buildType = "ament_cmake";
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
