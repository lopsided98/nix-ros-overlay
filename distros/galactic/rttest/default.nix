
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-galactic-rttest";
  version = "0.11.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/galactic/rttest/0.11.0-2.tar.gz";
    name = "0.11.0-2.tar.gz";
    sha256 = "625fb279bb138c03621347a5a14dea4b47bb69b1aa5f5b4aca718297b36c6372";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Instrumentation library for real-time performance testing'';
    license = with lib.licenses; [ asl20 ];
  };
}
