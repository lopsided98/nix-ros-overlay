
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nodelet, ros-environment, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-message-tf-frame-transformer";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/message_tf_frame_transformer-release/archive/release/noetic/message_tf_frame_transformer/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "40e3c44b79357536c8f8a6da4fcbf6315774663382acc19068e89a4172f07624";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nodelet ros-environment roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transforms messages of arbitrary type to a different frame using tf2::doTransform'';
    license = with lib.licenses; [ mit ];
  };
}
