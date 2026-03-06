
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-kilted-sick-safevisionary-tests";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/kilted/sick_safevisionary_tests/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "9835dbd142092024705cc4c6c47f86bbf2bc1af5206d2c39826d3f6090181f75";
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
