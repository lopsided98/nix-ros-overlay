
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv, rclcpp, rmw-implementation-cmake, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-intra-process-demo";
  version = "0.37.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/intra_process_demo/0.37.8-2.tar.gz";
    name = "0.37.8-2.tar.gz";
    sha256 = "5e19efeb5f95540cc64f395525df26669001a7d1311f290fda319802e3d53ee8";
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
