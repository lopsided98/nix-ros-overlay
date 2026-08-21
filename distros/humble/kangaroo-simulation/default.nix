
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kangaroo-mujoco }:
buildRosPackage {
  pname = "ros-humble-kangaroo-simulation";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_simulation-release/archive/release/humble/kangaroo_simulation/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "7f0e1738993769c006a1eda9df6053f72fb6554fd71169d98caa84f53c10d458";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ kangaroo-mujoco ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The kangaroo_simulation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
