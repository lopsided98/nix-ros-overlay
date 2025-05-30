
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, opencv, rclcpp, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-intra-process-demo";
  version = "0.37.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/intra_process_demo/0.37.0-1.tar.gz";
    name = "0.37.0-1.tar.gz";
    sha256 = "a9ffabba58f884f07a96edc77cca08d1c62a6aaa55fa94cf916fce6dedacb9d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake std-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake rmw-implementation-cmake ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstrations of intra process communication.";
    license = with lib.licenses; [ asl20 ];
  };
}
