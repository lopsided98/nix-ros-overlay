
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-tools";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_tools/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "d31f8cacb3dd27af7a6ac4af6362aa7e454b581a96872d9a98e36a204a44fcca";
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
