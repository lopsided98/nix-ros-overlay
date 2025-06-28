
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-message-tf-frame-transformer";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/message_tf_frame_transformer-release/archive/release/kilted/message_tf_frame_transformer/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "5ae87032035a72d500d5701a2fea892b4c218f48e3f56ac32e6de06ba111d0e3";
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
