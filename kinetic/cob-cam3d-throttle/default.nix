
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-cam3d-throttle";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_cam3d_throttle/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "b97279479cdd1619c83f58e3624c76d50f258aa43efda52b9ea4ace3294fd4b5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-filters nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_cam3d_throttle: only for Trottel'';
    license = with lib.licenses; [ asl20 ];
  };
}
