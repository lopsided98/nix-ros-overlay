
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, fuse-core, pluginlib, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-fuse-variables";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/melodic/fuse_variables/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "98776b63e33317a449abc8ac1060982454f76d81722f3d8b52c79fbe2f346d4a";
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
