
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-rttest";
  version = "0.20.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/lyrical/rttest/0.20.0-3.tar.gz";
    name = "0.20.0-3.tar.gz";
    sha256 = "6ab6b021132c3aafdc7cdb582428144404bd39d691b67167304bce860ef3447b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Instrumentation library for real-time performance testing";
    license = with lib.licenses; [ asl20 ];
  };
}
