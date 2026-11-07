
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-message-tf-frame-transformer";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/message_tf_frame_transformer-release/archive/release/humble/message_tf_frame_transformer/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "0d7f2a07232f4a036847dc718e49c88078bbead12b27d30633a5058e4c18b499";
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
