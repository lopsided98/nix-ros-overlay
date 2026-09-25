
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, openblas, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-tools";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_tools/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "2b8ca9dcd95cbd4c7a77e79ce94302b8ef222b69343c932180f27bcf746657f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ openblas tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Eigen utilities for geometry, kinematics, interpolation, tensors, hashing, and linear algebra.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
