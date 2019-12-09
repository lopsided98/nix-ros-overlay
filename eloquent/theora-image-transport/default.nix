
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, rosidl-default-runtime, std-msgs, ament-lint-common, libogg, ament-cmake, image-transport, libtheora, builtin-interfaces, cv-bridge, rosidl-default-generators, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-theora-image-transport";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/eloquent/theora_image_transport/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "e03d4a10f0c4411dcfb8eecb39e723355c8007957061f9866218bf19544078c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp pluginlib std-msgs libogg image-transport cv-bridge libtheora builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rosidl-default-runtime pluginlib std-msgs libogg image-transport cv-bridge libtheora builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
