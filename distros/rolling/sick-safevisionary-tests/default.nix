
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-tests";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_tests/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "d62f200eb6a5fb40d22afa2d8a0cc03930bbefe1b387659ed9975076aebaaf24";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch launch-ros launch-testing-ament-cmake sick-safevisionary-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Integration tests for the SICK safeVisionary ROS 2 driver";
    license = with lib.licenses; [ asl20 ];
  };
}
