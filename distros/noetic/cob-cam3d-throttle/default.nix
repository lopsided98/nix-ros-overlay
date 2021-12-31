
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-cam3d-throttle";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_cam3d_throttle/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "ac433834395c2d0928182e13403da1911c7c97b315c5faa7044932dc415deaa1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-filters nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_cam3d_throttle: only for Trottel'';
    license = with lib.licenses; [ asl20 ];
  };
}
