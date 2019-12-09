
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, launch, rmw-implementation-cmake, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-pytest, rclcpp, opencv3 }:
buildRosPackage {
  pname = "ros-crystal-intra-process-demo";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/intra_process_demo/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "f40ccb7be71f24b0b87300e5198f3e721aa99a537c8cee8b3ee707bee901fbc9";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs rclcpp opencv3 ];
  checkInputs = [ launch rmw-implementation-cmake launch-testing ament-lint-common ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs rclcpp opencv3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrations of intra process communication.'';
    license = with lib.licenses; [ asl20 ];
  };
}
