
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, compressed-depth-image-transport, compressed-image-transport, cras-cpp-common, cras-topic-tools, dynamic-reconfigure, image-transport, libjpeg_turbo, pluginlib, rosbag, roslint, sensor-msgs, theora-image-transport, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-image-transport-codecs";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/ros-utils/-/archive/release/noetic/image_transport_codecs/2.2.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "b0b8cda9dceb618b4092f6118253585e00d36ed0808ad7bfca4295eb54074759";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosbag roslint ];
  propagatedBuildInputs = [ class-loader compressed-depth-image-transport compressed-image-transport cras-cpp-common cras-topic-tools dynamic-reconfigure image-transport libjpeg_turbo pluginlib sensor-msgs theora-image-transport topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Image transport plugins available as C, C++ and Python libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
