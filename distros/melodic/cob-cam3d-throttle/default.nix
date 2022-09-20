
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-cam3d-throttle";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_cam3d_throttle/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "44ce788452e0f58be019c49c62190a3cbc6eeb928d582345d73cf622650f3530";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-filters nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_cam3d_throttle: only for Trottel'';
    license = with lib.licenses; [ asl20 ];
  };
}
