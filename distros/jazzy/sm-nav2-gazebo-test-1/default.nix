
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-keyboard, cl-nav2z, cl-ros2-timer, geometry-msgs, nav2-bringup, smacc2, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-nav2-gazebo-test-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_nav2_gazebo_test_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "8d3f6572043ae0d30f0cc9fb08f4312b4b604ec880d8804813754dae1a216a51";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-keyboard cl-nav2z cl-ros2-timer geometry-msgs nav2-bringup smacc2 xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 unit test state machine for SMACC2";
    license = with lib.licenses; [ asl20 ];
  };
}
