
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-visualization-marker-tutorials";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/visualization_marker_tutorials/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "4643aa30e98522f7ab8458add9c6a409a7b97e64565639798ccf6f0d00671a86";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The visulalization_marker_tutorials package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
