
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-iron-sick-safevisionary-tests";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/iron/sick_safevisionary_tests/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "893885426b8cc012213793a5d6ec11edea9a2915ea8a1299d8ddc1378e35dd58";
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
