
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, pluginlib, catkin, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-cam3d-throttle";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_cam3d_throttle/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "4451dd7a369723340dba5a3f593d8923faa7924bacb7cd7575f815256c13c6e6";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters pluginlib nodelet roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-filters pluginlib nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_cam3d_throttle: only for Trottel'';
    license = with lib.licenses; [ asl20 ];
  };
}
