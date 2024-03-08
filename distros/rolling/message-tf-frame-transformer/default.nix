
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-message-tf-frame-transformer";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/message_tf_frame_transformer-release/archive/release/rolling/message_tf_frame_transformer/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "a9e3b768263f91fad1355fd9c8e4e8ae48f2c27fee8cdea1ece3966328698f38";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs rclcpp ros-environment sensor-msgs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Transforms messages of arbitrary type to a different frame using tf2::doTransform'';
    license = with lib.licenses; [ mit ];
  };
}
