
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv, rclcpp, rmw-implementation-cmake, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-intra-process-demo";
  version = "0.37.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/intra_process_demo/0.37.10-1.tar.gz";
    name = "0.37.10-1.tar.gz";
    sha256 = "b5feb02b70c9d1f997fe2c5b8fa6cc653c505d99521aafb28c0bb3a2e212597d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake example-interfaces opencv.cxxdev ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ opencv rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstrations of intra process communication.";
    license = with lib.licenses; [ asl20 ];
  };
}
