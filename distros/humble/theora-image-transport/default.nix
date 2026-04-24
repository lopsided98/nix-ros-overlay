
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, cv-bridge, image-transport, libogg, libtheora, opencv, pkg-config, pluginlib, rclcpp, rcutils, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-theora-image-transport";
  version = "2.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/humble/theora_image_transport/2.5.5-1.tar.gz";
    name = "2.5.5-1.tar.gz";
    sha256 = "06554c70bb540c1574f47323fccd6e2ef3765da668e1d82ad6697c17f138775f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport libogg libtheora opencv opencv.cxxdev pluginlib rclcpp rcutils rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config rosidl-default-generators ];

  meta = {
    description = "Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
