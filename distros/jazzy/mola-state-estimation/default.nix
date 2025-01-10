
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, mola-imu-preintegration, mola-state-estimation-simple, mola-state-estimation-smoother }:
buildRosPackage {
  pname = "ros-jazzy-mola-state-estimation";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/jazzy/mola_state_estimation/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "be57c8214d6b17c03ade909c0de1d33f92ce6c5f935a01000f126b7657ed376e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ mola-imu-preintegration mola-state-estimation-simple mola-state-estimation-smoother ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage with all state estimation packages MOLA packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
