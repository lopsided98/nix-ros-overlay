
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-kilted-sick-safevisionary-tests";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/kilted/sick_safevisionary_tests/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "cbf4b89f462705d03ddc925cfed26677f302e4bbc7936a90861cf2e5b9d2a246";
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
