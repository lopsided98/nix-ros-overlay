
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, git, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-rolling-sol-vendor";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sol_vendor-release/archive/release/rolling/sol_vendor/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "30596212a7c5e613ae09ef7b49a6ec55a8bc1b3d7b61e6f54758ea3373d91e6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''vendor package for the sol2 library'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
