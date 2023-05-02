
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nodelet, ros-environment, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-message-tf-frame-transformer";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/message_tf_frame_transformer-release/archive/release/noetic/message_tf_frame_transformer/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "6803a3340197df033c5234511317e528e455e65e8dbf1fc5e059187fe1879234";
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
