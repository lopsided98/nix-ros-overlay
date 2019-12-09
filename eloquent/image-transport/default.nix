
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, ament-cmake-ros, pluginlib, ament-lint-common, ament-cmake-gtest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-image-transport";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/eloquent/image_transport/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "b12744e2606ce284efe69c1bcf32569bd58f6df569dbe7cdaf481556736b5cee";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs pluginlib message-filters rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs pluginlib message-filters rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
