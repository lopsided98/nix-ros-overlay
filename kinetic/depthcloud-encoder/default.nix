
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, pcl-ros, tf-conversions, dynamic-reconfigure, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-depthcloud-encoder";
  version = "0.1.1-r1";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/depthcloud_encoder-release/archive/release/kinetic/depthcloud_encoder/0.1.1-1.tar.gz;
    sha256 = "4b669d43e8cdf2b73a59be5a20cc02aee61b8160db0f653e3e321ac1d7accfd7";
  };

  buildInputs = [ image-transport sensor-msgs cv-bridge message-filters pcl-ros dynamic-reconfigure tf-conversions roscpp pcl-conversions ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge message-filters pcl-ros dynamic-reconfigure tf-conversions roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Cloud Encoder for Web-Based Streaming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
