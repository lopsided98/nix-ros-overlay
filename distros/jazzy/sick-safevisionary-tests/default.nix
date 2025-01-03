
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-jazzy-sick-safevisionary-tests";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/jazzy/sick_safevisionary_tests/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "72009e10b79cfbd80d63c2f20732619ae207db3f995e4937e890a5894e8e89b6";
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
