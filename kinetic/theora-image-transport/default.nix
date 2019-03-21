
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, image-transport, rosbag, cv-bridge, catkin, libogg, message-generation, std-msgs, message-runtime, dynamic-reconfigure, libtheora }:
buildRosPackage {
  pname = "ros-kinetic-theora-image-transport";
  version = "1.9.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_transport_plugins-release/archive/release/kinetic/theora_image_transport/1.9.5-0.tar.gz;
    sha256 = "88c28d0f55dd9ca60a3dc313b3eccf4ba387728ccd50890ff302119cbb59dac7";
  };

  propagatedBuildInputs = [ pluginlib image-transport rosbag cv-bridge libogg libtheora message-runtime dynamic-reconfigure std-msgs ];
  nativeBuildInputs = [ pluginlib image-transport rosbag cv-bridge catkin libogg libtheora message-generation dynamic-reconfigure std-msgs ];

  meta = {
    description = ''Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.'';
    #license = lib.licenses.BSD;
  };
}
