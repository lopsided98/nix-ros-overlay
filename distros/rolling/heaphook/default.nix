
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-rolling-heaphook";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/rolling/heaphook/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "295c6361605d31fc7b28222ba01db9a4a5fac404734c23b89be61589e881a2c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Replace all the dynamic heap allocation functions by LD_PRELOAD";
    license = with lib.licenses; [ asl20 ];
  };
}
