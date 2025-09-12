
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, libogg, libtheora, opencv, pkg-config, pluginlib, rclcpp, rcutils, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-theora-image-transport";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/jazzy/theora_image_transport/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "0e1737a2e020628d1122ebc48a6ee37b9b1eb0cd1735e30b37d75217760a1f47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport libogg libtheora opencv opencv.cxxdev pluginlib rclcpp rcutils rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config rosidl-default-generators ];

  meta = {
    description = "Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
