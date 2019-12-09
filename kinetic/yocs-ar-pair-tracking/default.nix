
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, yocs-math-toolkit, std-msgs, catkin, roscpp, yocs-msgs, ar-track-alvar-msgs, yocs-ar-marker-tracking }:
buildRosPackage {
  pname = "ros-kinetic-yocs-ar-pair-tracking";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_ar_pair_tracking/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "7827ddc6602cbb83f1b5aa101aea9142cfbc11792b83ac1d18802b727881fc28";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs yocs-math-toolkit std-msgs roscpp yocs-msgs ar-track-alvar-msgs yocs-ar-marker-tracking ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs yocs-math-toolkit std-msgs roscpp yocs-msgs ar-track-alvar-msgs yocs-ar-marker-tracking ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The AR pair tracking package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
