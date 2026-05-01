
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv, rclcpp, rmw-implementation-cmake, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-intra-process-demo";
  version = "0.37.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/intra_process_demo/0.37.8-3.tar.gz";
    name = "0.37.8-3.tar.gz";
    sha256 = "4d329744aa07cc9ec6566f1d6f1fedca8fbd284024eefd13fcdcf16d3825a9d1";
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
