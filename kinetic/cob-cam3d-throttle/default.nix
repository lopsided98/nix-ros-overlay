
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, sensor-msgs, catkin, message-filters, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-cam3d-throttle";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_cam3d_throttle/0.6.13-0.tar.gz;
    sha256 = "025d6693fb70b320c5cf831eba859268cacaa21b530141bebabc04b93e403b5e";
  };

  buildInputs = [ pluginlib nodelet sensor-msgs roscpp message-filters ];
  propagatedBuildInputs = [ pluginlib nodelet sensor-msgs roscpp message-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_cam3d_throttle: only for Trottel'';
    #license = lib.licenses.Apache 2.0;
  };
}
