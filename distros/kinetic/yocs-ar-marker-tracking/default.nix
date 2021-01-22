
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar-msgs, catkin, geometry-msgs, libyamlcpp, roscpp, sensor-msgs, yocs-math-toolkit }:
buildRosPackage {
  pname = "ros-kinetic-yocs-ar-marker-tracking";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_ar_marker_tracking/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "af4176e9087c34093f4462a38dfd67e38e62844e632a4a957aa33580e63ef1c4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ar-track-alvar-msgs geometry-msgs libyamlcpp roscpp sensor-msgs yocs-math-toolkit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collecting, tracking and generating statistics for ar markers from ar_track_alvar.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
