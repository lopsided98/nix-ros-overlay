
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, cv-bridge, image-transport, libogg, libtheora, opencv, pkg-config, pluginlib, rclcpp, rcutils, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-theora-image-transport";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/iron/theora_image_transport/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "b537772e5354059a5e35c94549018acb086e7b8ea144a7797dccdbbac00c1935";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport libogg libtheora opencv opencv.cxxdev pluginlib rclcpp rcutils rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config rosidl-default-generators ];

  meta = {
    description = ''Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
