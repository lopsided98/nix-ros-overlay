
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, compressed-depth-image-transport, compressed-image-transport, cras-cpp-common, cras-topic-tools, dynamic-reconfigure, image-transport, libjpeg_turbo, pluginlib, pythonPackages, rosbag, roslint, sensor-msgs, theora-image-transport, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-image-transport-codecs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/ros-utils/-/archive/release/melodic/image_transport_codecs/2.1.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "17942113552a82f30af0db0ee45f1b7e3347e0479ca1a8d607d60a021c9cb3eb";
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
