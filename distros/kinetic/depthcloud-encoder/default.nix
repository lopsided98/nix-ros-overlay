
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, message-filters, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-depthcloud-encoder";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/depthcloud_encoder-release/archive/release/kinetic/depthcloud_encoder/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4b669d43e8cdf2b73a59be5a20cc02aee61b8160db0f653e3e321ac1d7accfd7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport message-filters pcl-conversions pcl-ros roscpp sensor-msgs tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Cloud Encoder for Web-Based Streaming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
