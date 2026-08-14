
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, git, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-osqp-vendor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osqp_vendor-release/archive/release/lyrical/osqp_vendor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "942fc2b114a97c5ca4f97d3af049f2d5c1a99e858493674e291386022fe45cd6";
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
