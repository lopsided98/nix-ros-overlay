
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, git, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-osqp-vendor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osqp_vendor-release/archive/release/rolling/osqp_vendor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "71c3f2da61578700c50e713e8ef83fa85a83785e9208930f2725d7dc5ad620b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ros-environment ];
  checkInputs = [ ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Wrapper around osqp that ships with a CMake module";
    license = with lib.licenses; [ asl20 ];
  };
}
