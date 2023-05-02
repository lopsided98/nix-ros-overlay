
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, opencv, rclcpp, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-intra-process-demo";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/intra_process_demo/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "30aece9a425340f5ebe85bacece4c66c2905f0f60b3e5d83d15f8a92450cf2fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake std-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake rmw-implementation-cmake ];
  propagatedBuildInputs = [ opencv rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrations of intra process communication.'';
    license = with lib.licenses; [ asl20 ];
  };
}
