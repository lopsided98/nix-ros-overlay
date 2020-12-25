
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, armadillo, catkin, gazebo-msgs, geometry-msgs, map-server, nav-msgs, roscpp, rosunit, rviz, sensor-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-ergodic-exploration";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/bostoncleek/ergodic_exploration-release/archive/release/noetic/ergodic_exploration/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4e260e2b6e3e701904b9436baedfde929556f3cda49dbb4caa01b5e585ca5bf7";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-msgs geometry-msgs nav-msgs sensor-msgs tf2 visualization-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ armadillo map-server roscpp rviz tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot agnostic information theoretic exploration strategy'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
