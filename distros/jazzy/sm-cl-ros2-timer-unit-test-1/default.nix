
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-ros2-timer, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-cl-ros2-timer-unit-test-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_cl_ros2_timer_unit_test_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "a00c5f46eb78ffc311a5fc6bf19b9457ebfa22cc12a63870a976443393ce6f78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-ros2-timer smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_cl_ros2_timer_unit_test_1 package";
    license = with lib.licenses; [ asl20 ];
  };
}
