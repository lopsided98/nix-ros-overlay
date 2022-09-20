
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-hector-marker-drawing";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_marker_drawing/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "c17a86ba1a6c603dedfc4c757c6f19c5537e808d0eb01241bf18431e9ef0bbca";
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
