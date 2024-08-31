
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ros2-control-test-assets";
  version = "2.43.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/ros2_control_test_assets/2.43.0-1.tar.gz";
    name = "2.43.0-1.tar.gz";
    sha256 = "5e7707c766a423e651543c928bef319637806207a4dab5aede2dcd325e7416ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The package provides shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
