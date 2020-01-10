
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, nav2-common, nav2-msgs, nav2-tasks, rclcpp }:
buildRosPackage {
  pname = "ros-crystal-nav2-simple-navigator";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_simple_navigator/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "40fd4cfb0a383c7e86ecc2c63a0093032757dc27c8e84a31d915c407660e94a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ nav2-msgs nav2-tasks rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
