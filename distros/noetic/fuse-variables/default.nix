
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, fuse-core, pluginlib, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-fuse-variables";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/noetic/fuse_variables/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "28e692927f5dabf2818df89960abefa75669bf8ec16de14cf3626a581d77308b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_variables package provides a set of commonly used variable types, such as 2D and 3D positions,
    orientations, velocities, and accelerations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
