
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake-pytest, ament-cmake, rclcpp-lifecycle, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, nav2-common, nav-msgs, rclcpp-action, rclcpp, ament-lint-auto, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav2-navfn-planner";
  version = "0.2.3-r1";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_navfn_planner/0.2.3-1.tar.gz;
    sha256 = "dd9748867b0a456b53a9227f658335a1f7ede5593f45bc02efec1d5685aa1de4";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces rclcpp-lifecycle nav2-msgs nav2-util nav2-common nav-msgs rclcpp-action rclcpp visualization-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp-lifecycle nav2-msgs nav2-util nav-msgs rclcpp-action rclcpp visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
