
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, nav2-tasks, boost, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, nav2-common, nav-2d-utils, rclcpp, std-msgs, ament-lint-auto, dwb-core, nav2-robot, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-crystal-dwb-controller";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_controller/0.1.7-0.tar.gz;
    sha256 = "450f6b6b59a11f491adbd99d2ceaf1e150a11f337e4d64b84738e3159dd974d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost nav2-tasks nav2-msgs nav2-util nav2-common nav-2d-utils rclcpp std-msgs dwb-core nav2-robot nav-2d-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-tasks boost nav2-msgs nav2-util nav-2d-utils rclcpp std-msgs dwb-core nav2-robot nav-2d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
