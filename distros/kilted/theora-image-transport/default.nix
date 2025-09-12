
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, libogg, libtheora, opencv, pkg-config, pluginlib, rclcpp, rcutils, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-theora-image-transport";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/kilted/theora_image_transport/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "7e221ca09417c056034b9e396cf74c5739f24353747e4dc6c8de8ea9e722d571";
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
