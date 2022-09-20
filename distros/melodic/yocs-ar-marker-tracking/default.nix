
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar-msgs, catkin, geometry-msgs, libyamlcpp, roscpp, sensor-msgs, yocs-math-toolkit }:
buildRosPackage {
  pname = "ros-melodic-yocs-ar-marker-tracking";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_ar_marker_tracking/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "10cb24072d6c3a4eb12bd24686276fe3ee8b70ec4cef5c4e38257fdd5bdf0ac7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ar-track-alvar-msgs geometry-msgs libyamlcpp roscpp sensor-msgs yocs-math-toolkit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collecting, tracking and generating statistics for ar markers from ar_track_alvar.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
