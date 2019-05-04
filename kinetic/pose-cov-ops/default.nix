
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-bridge, catkin, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pose-cov-ops";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/kinetic/pose_cov_ops/0.2.0-0.tar.gz;
    sha256 = "4663f358f5afe1e1cbb6ff548d898fcf19e6a159bdff02819125d149a5652e27";
  };

  buildInputs = [ mrpt-bridge roscpp geometry-msgs ];
  propagatedBuildInputs = [ mrpt-bridge roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library with C++ functions for SE(2/3) pose and 2D/3D point
    composition operations with uncertainty'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
