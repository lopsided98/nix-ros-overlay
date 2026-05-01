
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-lyrical-sick-safevisionary-tests";
  version = "1.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/lyrical/sick_safevisionary_tests/1.0.3-4.tar.gz";
    name = "1.0.3-4.tar.gz";
    sha256 = "e74196c98b6208e5127670a8e676e766bb062f3ade60677396ab5ae501f7194c";
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
