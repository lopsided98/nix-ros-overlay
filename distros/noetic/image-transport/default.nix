
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, pluginlib, rosconsole, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-transport";
  version = "1.12.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "image_common-release";
        rev = "release/noetic/image_transport/1.12.0-1";
        sha256 = "sha256-0MoEpnPELHrepZ2Q8d/rqAweME89Ywu7zzn9ElEUqeg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-filters pluginlib rosconsole roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
