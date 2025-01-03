
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nodelet, ros-environment, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-message-tf-frame-transformer";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/message_tf_frame_transformer-release/archive/release/noetic/message_tf_frame_transformer/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "1c47e7e6679f5d47bba3d792783484492fcfd39186074b6e5f72ec387161dae1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nodelet ros-environment roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Transforms messages of arbitrary type to a different frame using tf2::doTransform";
    license = with lib.licenses; [ mit ];
  };
}
