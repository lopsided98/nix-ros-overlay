
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar-msgs, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, yocs-ar-marker-tracking, yocs-math-toolkit, yocs-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-ar-pair-tracking";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_ar_pair_tracking/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "7827ddc6602cbb83f1b5aa101aea9142cfbc11792b83ac1d18802b727881fc28";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ar-track-alvar-msgs geometry-msgs roscpp sensor-msgs std-msgs yocs-ar-marker-tracking yocs-math-toolkit yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The AR pair tracking package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
