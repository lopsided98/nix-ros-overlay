
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, catkin, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visualization-marker-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/visualization_marker_tutorials/0.10.3-0.tar.gz";
    name = "0.10.3-0.tar.gz";
    sha256 = "1ad28a1371f55206159902d81177481fd832bcf9027153e040f4b65ddcaaccf2";
  };

  buildType = "catkin";
  buildInputs = [ visualization-msgs roscpp ];
  propagatedBuildInputs = [ visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The visulalization_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
