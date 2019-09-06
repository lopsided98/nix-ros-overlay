
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, ament-lint-common, launch-testing, sensor-msgs, launch, launch-testing-ament-cmake, rclcpp, std-msgs, ament-lint-auto, opencv3 }:
buildRosPackage rec {
  pname = "ros-dashing-intra-process-demo";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/intra_process_demo/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "65aea36fe5659b44f7c427fd4a1b2ac5cc7120345958ba1007bcd0a69bc70930";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs opencv3 rclcpp ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch launch-testing-ament-cmake ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs opencv3 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrations of intra process communication.'';
    license = with lib.licenses; [ asl20 ];
  };
}
