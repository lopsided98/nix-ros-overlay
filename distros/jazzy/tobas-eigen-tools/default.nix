
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-tools";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_tools/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "4479728b07fa11a140310d369072f5bf6f779f3a4b1f85b800cc914df159c1fb";
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
