
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, git, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-sol-vendor";
  version = "0.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sol_vendor-release/archive/release/lyrical/sol_vendor/0.0.3-6.tar.gz";
    name = "0.0.3-6.tar.gz";
    sha256 = "8d588c575624adbbc2613694c24fa2903cb4e7502a2557ca848d7c3bc164716f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "vendor package for the sol2 library";
    license = with lib.licenses; [ asl20 mit ];
  };
}
