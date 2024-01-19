
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-marker-drawing";
  version = "0.5.2-r4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_marker_drawing/0.5.2-4.tar.gz";
    name = "0.5.2-4.tar.gz";
    sha256 = "3859c57d91000a3fe44b89821cabcec52857a70a72639c0d6f94dc216b764d55";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_marker_drawing provides convenience functions for easier publishing of visualization markers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
