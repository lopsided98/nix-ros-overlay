
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, image-transport, rosbag, cv-bridge, catkin, libogg, message-generation, std-msgs, message-runtime, dynamic-reconfigure, libtheora }:
buildRosPackage {
  pname = "ros-melodic-theora-image-transport";
  version = "1.9.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_transport_plugins-release/archive/release/melodic/theora_image_transport/1.9.5-0.tar.gz;
    sha256 = "03701fa45f64b4642eb8b7720662363bb10c4f20e32da2783c595258fc3eaced";
  };

  buildInputs = [ pluginlib image-transport rosbag cv-bridge libogg libtheora message-generation dynamic-reconfigure std-msgs ];
  propagatedBuildInputs = [ pluginlib image-transport rosbag cv-bridge libogg libtheora message-runtime dynamic-reconfigure std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
