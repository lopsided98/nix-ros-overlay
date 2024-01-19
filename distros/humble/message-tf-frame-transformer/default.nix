
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-message-tf-frame-transformer";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/message_tf_frame_transformer-release/archive/release/humble/message_tf_frame_transformer/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "51bf95fac905e0ea0f9119ee44795a449662b0ddf7693dfd211421e34ed18f34";
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
