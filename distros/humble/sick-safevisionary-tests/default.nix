
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-humble-sick-safevisionary-tests";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/humble/sick_safevisionary_tests/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "f338247a0b28fc5f8573eee045b678775ed6676f93ce5a94d95e8b50429370e6";
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
