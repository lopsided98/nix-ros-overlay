
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-message-tf-frame-transformer";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/message_tf_frame_transformer-release/archive/release/iron/message_tf_frame_transformer/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "60482d0e319e832aefd7445222d8ec5ab5b030ae11e4b33b52681f8ea6f8ded4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs rclcpp ros-environment sensor-msgs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Transforms messages of arbitrary type to a different frame using tf2::doTransform";
    license = with lib.licenses; [ mit ];
  };
}
