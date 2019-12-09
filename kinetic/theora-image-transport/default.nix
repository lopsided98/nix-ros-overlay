
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, dynamic-reconfigure, pluginlib, std-msgs, catkin, libogg, libtheora, image-transport, cv-bridge, rosbag, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-theora-image-transport";
  version = "1.9.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_transport_plugins-release/archive/release/kinetic/theora_image_transport/1.9.5-0.tar.gz";
    name = "1.9.5-0.tar.gz";
    sha256 = "88c28d0f55dd9ca60a3dc313b3eccf4ba387728ccd50890ff302119cbb59dac7";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure pluginlib std-msgs libogg libtheora image-transport cv-bridge rosbag message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure pluginlib std-msgs libogg libtheora image-transport cv-bridge rosbag message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
