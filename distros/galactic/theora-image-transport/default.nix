
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, cv-bridge, image-transport, libogg, libtheora, pluginlib, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-theora-image-transport";
  version = "2.3.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/galactic/theora_image_transport/2.3.0-5.tar.gz";
    name = "2.3.0-5.tar.gz";
    sha256 = "a0deb31f2e95b09e06ea963b3cb6b06ff39df1ea4fe1b3b9b61de71799448360";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge image-transport libogg libtheora pluginlib rclcpp rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
