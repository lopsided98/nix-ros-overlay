
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2-robot, nav-msgs, launch, std-msgs, std-srvs, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, ament-cmake-pytest, nav2-tasks, rclcpp, nav2-msgs, ament-lint-auto, behaviortree-cpp }:
buildRosPackage {
  pname = "ros-crystal-nav2-bt-navigator";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_bt_navigator/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "fd2908b00d423212ddbaeacc31f3b27d048cb21cd200df18f2b9ec80bea1cef1";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-robot nav-msgs std-msgs std-srvs nav2-common nav2-tasks rclcpp nav2-msgs behaviortree-cpp ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ nav-msgs std-msgs nav2-tasks rclcpp nav2-msgs behaviortree-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
