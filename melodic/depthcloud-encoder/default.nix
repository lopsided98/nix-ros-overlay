
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, pcl-ros, dynamic-reconfigure, tf-conversions, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-melodic-depthcloud-encoder";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/depthcloud_encoder-release/archive/release/melodic/depthcloud_encoder/0.1.0-0.tar.gz;
    sha256 = "f057bb543baa3dcb80b740f37262203623e9c9ecbdd5328ce3164dcb667eea39";
  };

  buildInputs = [ image-transport pcl-conversions cv-bridge message-filters sensor-msgs dynamic-reconfigure tf-conversions roscpp pcl-ros ];
  propagatedBuildInputs = [ image-transport pcl-conversions cv-bridge message-filters sensor-msgs dynamic-reconfigure tf-conversions roscpp pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Cloud Encoder for Web-Based Streaming'';
    #license = lib.licenses.BSD;
  };
}
