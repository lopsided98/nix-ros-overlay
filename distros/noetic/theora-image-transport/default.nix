
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, libogg, libtheora, message-generation, message-runtime, pluginlib, rosbag, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-theora-image-transport";
  version = "1.14.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "image_transport_plugins-release";
        rev = "release/noetic/theora_image_transport/1.14.0-1";
        sha256 = "sha256-hqhP4uGkoPiGxJ5gmvMtICK8g2ijJMnbA1tO2+j3Xew=";
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
