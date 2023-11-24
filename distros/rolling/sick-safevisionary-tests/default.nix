
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-tests";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_tests/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "b27f46eec5108c3819f4439c20c95683310c5f89e8afa81ce6818afc33542c89";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch launch-ros launch-testing-ament-cmake sick-safevisionary-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Integration tests for the Sick SafeVisionary2 driver'';
    license = with lib.licenses; [ asl20 ];
  };
}
