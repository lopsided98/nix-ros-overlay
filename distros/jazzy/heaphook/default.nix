
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-jazzy-heaphook";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/jazzy/heaphook/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "1bcff1cabbe2214d084e063410d25a8c55b0ee884332e0917b548c6adc209ee1";
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
