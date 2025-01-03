
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-rolling-heaphook";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/rolling/heaphook/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "79d2c863a761f59f2ec9b7febdfb988deb6c3e2dad626190046b5c4608fc9857";
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
