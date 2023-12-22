
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-humble-sick-safevisionary-tests";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/humble/sick_safevisionary_tests/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "730f1d674f7031469c95eefc5d865e1ea12b016feb8b492d81bb694fa909c865";
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
