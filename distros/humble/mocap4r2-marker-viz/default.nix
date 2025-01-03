
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, mocap4r2-marker-viz-srvs, mocap4r2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-marker-viz";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_marker_viz/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "4dc70555297fc61cae235f7a1a096e7c0b10e5f2fb8616e536d6ff3fe7d17526";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs mocap4r2-marker-viz-srvs mocap4r2-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Node for visualizing markers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
