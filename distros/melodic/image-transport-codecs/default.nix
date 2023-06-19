
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, compressed-depth-image-transport, compressed-image-transport, cras-cpp-common, cras-topic-tools, dynamic-reconfigure, image-transport, libjpeg_turbo, pluginlib, pythonPackages, rosbag, roslint, sensor-msgs, theora-image-transport, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-image-transport-codecs";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/ros-utils/-/archive/release/melodic/image_transport_codecs/2.2.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "ac6e2a0cf6b5edd4cbb9a0a966fd84b123f6c60894272661fe8a88769635e7da";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosbag roslint ];
  propagatedBuildInputs = [ class-loader compressed-depth-image-transport compressed-image-transport cras-cpp-common cras-topic-tools dynamic-reconfigure image-transport libjpeg_turbo pluginlib pythonPackages.enum34 sensor-msgs theora-image-transport topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Image transport plugins available as C, C++ and Python libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
