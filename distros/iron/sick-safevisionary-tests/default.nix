
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-iron-sick-safevisionary-tests";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/iron/sick_safevisionary_tests/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "27c814b28fb520ec3812e2c43a9c6f9f6449662254f0ccf3d3a0f4ded7c312e4";
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
