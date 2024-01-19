
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, libogg, libtheora, message-generation, message-runtime, pluginlib, rosbag, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-theora-image-transport";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_transport_plugins-release/archive/release/noetic/theora_image_transport/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "0118b37d2c05543c66294cb79f2065613fc1b6f869f3284de12420b701bd1b08";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport libogg libtheora message-runtime pluginlib rosbag std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
