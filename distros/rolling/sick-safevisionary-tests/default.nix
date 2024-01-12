
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-tests";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_tests/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "0f42abe4d628898f9a3a77d7dd303f1fa2bf4df33ed454aad562f83782d7f375";
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
