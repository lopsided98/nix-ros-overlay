
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, ament-lint-common, ament-cmake-gtest, sensor-msgs, message-filters, rclcpp, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-image-transport";
  version = "2.1.1-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/image_common-release/archive/release/dashing/image_transport/2.1.1-1.tar.gz;
    sha256 = "d2ffbde31805683e877a833d35e19093836540d31fd629f42f9352c2c659e390";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs pluginlib message-filters rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ sensor-msgs rclcpp message-filters pluginlib ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
