
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, behaviortree-cpp, launch, launch-testing, nav-msgs, nav2-common, nav2-msgs, nav2-robot, nav2-tasks, rclcpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-crystal-nav2-bt-navigator";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_bt_navigator/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "fd2908b00d423212ddbaeacc31f3b27d048cb21cd200df18f2b9ec80bea1cef1";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common nav2-robot std-srvs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ behaviortree-cpp nav-msgs nav2-msgs nav2-tasks rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
