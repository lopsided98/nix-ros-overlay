
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-kilted-sick-safevisionary-tests";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/kilted/sick_safevisionary_tests/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "f97b592776b895f853ec867bbed0a793026fd7d2dc6c23d096a27d745f1c1a4b";
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
