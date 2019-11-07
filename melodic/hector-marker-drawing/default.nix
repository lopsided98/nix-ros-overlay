
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, catkin, visualization-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-hector-marker-drawing";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_marker_drawing/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "087fbe514f592a80d5a3d7b8bb7e4a39aefbb7b4930b4d056bfc1fc6d5113cd3";
  };

  buildType = "catkin";
  buildInputs = [ visualization-msgs roscpp eigen ];
  propagatedBuildInputs = [ visualization-msgs roscpp eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_marker_drawing provides convenience functions for easier publishing of visualization markers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
