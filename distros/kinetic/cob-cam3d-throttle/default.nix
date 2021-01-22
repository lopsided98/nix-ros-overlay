
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-cam3d-throttle";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_cam3d_throttle/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "44e96909f7e422b9fcb1b7770cd6b87d946ed7b0b0b717d25c213b909b07c016";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-filters nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_cam3d_throttle: only for Trottel'';
    license = with lib.licenses; [ asl20 ];
  };
}
