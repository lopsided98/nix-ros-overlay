
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visualization-marker-tutorials";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/visualization_marker_tutorials/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "67899fa850d2dd42bb55f3c327ccf68350d3f092402a52cde8326aa51cc40343";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The visulalization_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
