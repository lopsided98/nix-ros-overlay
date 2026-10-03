
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-tools";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_tools/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "b21c06b7fb8c8c482089ef9f8d43c829588af60cee5fc5c33987d506b95c5c8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Eigen utilities for geometry, kinematics, interpolation, tensors, hashing, and linear algebra.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
