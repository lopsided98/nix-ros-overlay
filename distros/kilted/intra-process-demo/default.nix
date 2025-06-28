
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv, rclcpp, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-intra-process-demo";
  version = "0.36.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/intra_process_demo/0.36.1-1.tar.gz";
    name = "0.36.1-1.tar.gz";
    sha256 = "92ed255eac67bd4b880a30d121591f7d82cff54d0339f5fe921c84f417b09b8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake std-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstrations of intra process communication.";
    license = with lib.licenses; [ asl20 ];
  };
}
