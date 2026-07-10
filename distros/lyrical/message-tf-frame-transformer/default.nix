
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-message-tf-frame-transformer";
  version = "1.1.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/message_tf_frame_transformer-release/archive/release/lyrical/message_tf_frame_transformer/1.1.3-4.tar.gz";
    name = "1.1.3-4.tar.gz";
    sha256 = "b672683097a8e4bf356c6fa7ef46732e334fbe81ee2101d450e7981fb5643cd4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs rclcpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Transforms messages of arbitrary type to a different frame using tf2::doTransform";
    license = with lib.licenses; [ mit ];
  };
}
