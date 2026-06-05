
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-ros2-timer, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-multithread-test-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_multithread_test_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "3ec978ca2ad1603722ae1e95fd58892cb7884457dd969f079f00154ee09f1df4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-ros2-timer smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SMACC2 multi-threaded executor demonstration state machine.
    This state machine demonstrates the use of ExecutionModel::MULTI_THREAD_SPINNER
    for concurrent ROS2 callback processing. Addresses GitHub issue #571.";
    license = with lib.licenses; [ asl20 ];
  };
}
