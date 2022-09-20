
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, eigen, fuse-msgs, pluginlib, rosconsole, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-fuse-core";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/melodic/fuse_core/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "c77b8eaf22b5a011e67d962b57a7b59833a909f0fd4388b0438974879bb3f8c6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ ceres-solver eigen fuse-msgs pluginlib rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_core package provides the base class interfaces for the various fuse components. Concrete implementations of these
    interfaces are provided in other packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
