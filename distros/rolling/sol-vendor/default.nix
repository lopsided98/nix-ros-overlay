
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-rolling-sol-vendor";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sol_vendor-release/archive/release/rolling/sol_vendor/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "25d2f646141cde5dbb4e7c3054bf5d735edde6c542dedee7ee209bc2a2e8dcef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''vendor package for the sol2 library'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
