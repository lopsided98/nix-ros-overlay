
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, behaviortree-cpp, rosidl-default-runtime, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, rclcpp, builtin-interfaces, std-srvs, tf2-geometry-msgs, std-msgs, nav2-robot, ament-lint-common, launch-testing, rosidl-default-generators, nav2-msgs, tf2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-tasks";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_tasks/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "b070fc9294edfb71eef1e6b0a3442f371d0e82521958328aa54e48d67428a4c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces std-srvs tf2-geometry-msgs rosidl-default-generators nav2-msgs nav2-common tf2 behaviortree-cpp rclcpp std-msgs nav2-robot geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces tf2-geometry-msgs nav2-msgs tf2 behaviortree-cpp rclcpp std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
