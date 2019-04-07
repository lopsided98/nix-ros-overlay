
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyamlcpp, sensor-msgs, catkin, yocs-math-toolkit, ar-track-alvar-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-ar-marker-tracking";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_ar_marker_tracking/0.8.2-0.tar.gz;
    sha256 = "10cb24072d6c3a4eb12bd24686276fe3ee8b70ec4cef5c4e38257fdd5bdf0ac7";
  };

  buildInputs = [ ar-track-alvar-msgs libyamlcpp sensor-msgs roscpp yocs-math-toolkit geometry-msgs ];
  propagatedBuildInputs = [ ar-track-alvar-msgs libyamlcpp sensor-msgs roscpp yocs-math-toolkit geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collecting, tracking and generating statistics for ar markers from ar_track_alvar.'';
    #license = lib.licenses.BSD;
  };
}
