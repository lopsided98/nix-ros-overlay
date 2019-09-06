
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ament-cmake-pytest, ament-cmake, nav2-tasks, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, launch, nav2-common, nav-msgs, behaviortree-cpp, rclcpp, std-msgs, ament-lint-auto, nav2-robot }:
buildRosPackage {
  pname = "ros-crystal-nav2-bt-navigator";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_bt_navigator/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "fd2908b00d423212ddbaeacc31f3b27d048cb21cd200df18f2b9ec80bea1cef1";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-srvs nav2-tasks nav2-msgs nav2-common nav-msgs behaviortree-cpp rclcpp std-msgs nav2-robot ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-tasks nav2-msgs nav-msgs behaviortree-cpp rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
