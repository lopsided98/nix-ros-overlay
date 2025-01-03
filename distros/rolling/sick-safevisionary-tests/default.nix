
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-tests";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_tests/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "a7c445c9cce04d62d9cd1e6287f24f725a174c29da20c0dadcdaf0f10f47c0bf";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch launch-ros launch-testing-ament-cmake sick-safevisionary-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Integration tests for the Sick SafeVisionary2 driver";
    license = with lib.licenses; [ asl20 ];
  };
}
