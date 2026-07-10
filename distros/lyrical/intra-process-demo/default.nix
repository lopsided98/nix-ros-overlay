
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv, rclcpp, rmw-implementation-cmake, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-intra-process-demo";
  version = "0.37.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/intra_process_demo/0.37.9-1.tar.gz";
    name = "0.37.9-1.tar.gz";
    sha256 = "32961ade435dd9ca8d1c6b4b7758a4837d28ccf647da0b5d8a1be6e86a9a4f45";
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
