
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-marker-drawing";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_marker_drawing/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "16158a1dd69bb1abc0ee73348febddda0d802d6be2630e38356931f1b1abba8b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_marker_drawing provides convenience functions for easier publishing of visualization markers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
