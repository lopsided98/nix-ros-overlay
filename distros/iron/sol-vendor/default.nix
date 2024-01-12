
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, git, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-iron-sol-vendor";
  version = "0.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sol_vendor-release/archive/release/iron/sol_vendor/0.0.3-4.tar.gz";
    name = "0.0.3-4.tar.gz";
    sha256 = "75e1e86dbed058e2e7c30cbeaa0503cd812373a2a73b2436bca90fa638b23d34";
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
