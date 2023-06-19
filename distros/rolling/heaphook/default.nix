
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-rolling-heaphook";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/rolling/heaphook/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "abe2af9aeb4236658ee811e8c2c257e650e3b58a3dc9fcddaf929923537d3b4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Replace all the dynamic heap allocation functions by LD_PRELOAD'';
    license = with lib.licenses; [ asl20 ];
  };
}
