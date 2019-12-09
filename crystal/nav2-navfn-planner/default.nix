
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2-robot, nav2-msgs, geometry-msgs, rclcpp, launch, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, visualization-msgs, ament-cmake-pytest, nav2-tasks, nav2-util, builtin-interfaces, nav-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-navfn-planner";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_navfn_planner/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "412542dcda7ba8032585d1d0ff7155c10051f76a66b2301d080b282d20503509";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-robot geometry-msgs nav-msgs rclcpp nav2-common visualization-msgs nav2-tasks nav2-util builtin-interfaces nav2-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ nav2-robot geometry-msgs nav-msgs rclcpp visualization-msgs nav2-tasks nav2-util builtin-interfaces nav2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
