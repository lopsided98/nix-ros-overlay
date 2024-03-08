
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, opencv, rclcpp, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-intra-process-demo";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/intra_process_demo/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "2c84c103642229fbdf6c8448ca7a7f7d29bac2b530b131a7945094384bca6121";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake std-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake rmw-implementation-cmake ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrations of intra process communication.'';
    license = with lib.licenses; [ asl20 ];
  };
}
