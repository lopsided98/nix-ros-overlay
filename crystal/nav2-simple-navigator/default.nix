
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, ament-cmake-pytest, nav2-tasks, rclcpp, nav2-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-simple-navigator";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_simple_navigator/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "40fd4cfb0a383c7e86ecc2c63a0093032757dc27c8e84a31d915c407660e94a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-tasks rclcpp nav2-msgs nav2-common ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ nav2-tasks rclcpp nav2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
