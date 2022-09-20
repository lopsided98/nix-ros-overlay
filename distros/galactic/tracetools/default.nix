
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-galactic-tracetools";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/galactic/tracetools/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "02534a270b74649768c667f48d3dd3cb47592e562240d7dad80e7f3758af24b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = ''Tracing wrapper for ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
