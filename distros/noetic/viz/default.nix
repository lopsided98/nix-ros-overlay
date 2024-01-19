
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-base, rqt-common-plugins, rqt-robot-plugins, rviz }:
buildRosPackage {
  pname = "ros-noetic-viz";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/noetic/viz/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "209f316e6ef4b39c724afba3239dec4e8493a7904c676a9fc46291ffa2330b9d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-base rqt-common-plugins rqt-robot-plugins rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
