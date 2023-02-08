
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, message-filters, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-depthcloud-encoder";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RobotWebTools-release";
        repo = "depthcloud_encoder-release";
        rev = "release/melodic/depthcloud_encoder/0.1.1-1";
        sha256 = "sha256-3DoHDLnNEC3hOiOEpTqH8T/rcSvbzKcoZ58na41a5X4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport message-filters pcl-conversions pcl-ros roscpp sensor-msgs tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Cloud Encoder for Web-Based Streaming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
