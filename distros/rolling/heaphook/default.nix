
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-rolling-heaphook";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/rolling/heaphook/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "92e24bb4778043b5f898e82d7fa3bdb1050f4fae4649cc47e402b00c4495fb97";
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
