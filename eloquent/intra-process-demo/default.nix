
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, launch, rmw-implementation-cmake, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-lint-auto, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, opencv3 }:
buildRosPackage {
  pname = "ros-eloquent-intra-process-demo";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/intra_process_demo/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "51a61a88429c28e2f5e3a43735dadc7e9eeaa8b1703d734081edd18ff9be6360";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs rclcpp opencv3 ];
  checkInputs = [ launch rmw-implementation-cmake launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs rclcpp opencv3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrations of intra process communication.'';
    license = with lib.licenses; [ asl20 ];
  };
}
