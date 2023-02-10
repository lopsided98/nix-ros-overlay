
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, libogg, libtheora, message-generation, message-runtime, pluginlib, rosbag, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-theora-image-transport";
  version = "1.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/melodic/theora_image_transport/1.9.6-1.tar.gz";
    name = "1.9.6-1.tar.gz";
    sha256 = "76033c052a1319137834fc4b7a3a0961b94de7447852d56cfe644577cf437d1f";
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
