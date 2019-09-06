
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake-pytest, ament-cmake, nav2-tasks, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, nav2-common, nav-msgs, rclcpp, ament-lint-auto, visualization-msgs, nav2-robot, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-navfn-planner";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_navfn_planner/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "412542dcda7ba8032585d1d0ff7155c10051f76a66b2301d080b282d20503509";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces nav2-tasks nav2-msgs nav2-util nav2-common nav-msgs rclcpp visualization-msgs nav2-robot geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces nav2-tasks nav2-msgs nav2-util nav-msgs rclcpp visualization-msgs nav2-robot geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
