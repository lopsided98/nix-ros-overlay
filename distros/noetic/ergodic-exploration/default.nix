
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, armadillo, catkin, geometry-msgs, map-server, nav-msgs, roscpp, rosunit, rviz, sensor-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-ergodic-exploration";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/bostoncleek/ergodic_exploration-release/archive/release/noetic/ergodic_exploration/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "d2e81bb6a8707add0d3ea8178e3e770dd865fdbdec36b515e477ce27d1e40ec5";
  };

  buildType = "catkin";
  buildInputs = [ catkin geometry-msgs nav-msgs sensor-msgs tf2 visualization-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ armadillo map-server roscpp rviz tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot agnostic information theoretic exploration strategy'';
    license = with lib.licenses; [ bsd3 ];
  };
}
