
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, nav2-tasks, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, launch, nav2-common, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-simple-navigator";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_simple_navigator/0.1.7-0.tar.gz;
    sha256 = "40fd4cfb0a383c7e86ecc2c63a0093032757dc27c8e84a31d915c407660e94a0";
  };

  buildInputs = [ nav2-tasks nav2-msgs rclcpp nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-msgs rclcpp nav2-tasks ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
