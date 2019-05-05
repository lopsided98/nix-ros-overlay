
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, catkin, visualization-msgs }:
buildRosPackage {
  pname = "ros-lunar-visualization-marker-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/lunar/visualization_marker_tutorials/0.10.3-0.tar.gz;
    sha256 = "429a6d6217abfe09e0ad82c664e4d158bba571e7fe3b29a566873f824caab1af";
  };

  buildInputs = [ visualization-msgs roscpp ];
  propagatedBuildInputs = [ visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The visulalization_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
