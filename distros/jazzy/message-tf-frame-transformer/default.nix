
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-message-tf-frame-transformer";
  version = "1.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/message_tf_frame_transformer-release/archive/release/jazzy/message_tf_frame_transformer/1.1.3-2.tar.gz";
    name = "1.1.3-2.tar.gz";
    sha256 = "5dfa1d1509613766fe276eaa472816443daac08e81bf526507f78bd4068b3210";
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
