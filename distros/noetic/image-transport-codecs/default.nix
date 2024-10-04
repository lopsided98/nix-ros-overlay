
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, compressed-depth-image-transport, compressed-image-transport, cras-cpp-common, cras-topic-tools, dynamic-reconfigure, image-transport, libjpeg_turbo, pluginlib, rosbag, roslint, sensor-msgs, theora-image-transport, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-image-transport-codecs";
  version = "2.4.4-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/ros-utils/-/archive/release/noetic/image_transport_codecs/2.4.4-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "49d76941dd2c3e97d9a2782f750e91a89ec74b6095da90db5952da6c0971ee7c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosbag roslint ];
  propagatedBuildInputs = [ class-loader compressed-depth-image-transport compressed-image-transport cras-cpp-common cras-topic-tools dynamic-reconfigure image-transport libjpeg_turbo pluginlib sensor-msgs theora-image-transport topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Image transport plugins available as C, C++ and Python libraries";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
