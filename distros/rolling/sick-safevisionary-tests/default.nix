
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-tests";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_tests/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "eb36908ff2c7bc22b1180d78a0a1a2d39cd28b7b0a07c3a63ffc3ff96a2dc1bb";
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
