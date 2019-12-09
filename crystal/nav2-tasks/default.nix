
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, tf2, rosidl-default-generators, nav2-msgs, ament-lint-auto, launch-testing, ament-lint-common, tf2-geometry-msgs, nav2-common, rclcpp, builtin-interfaces, ament-cmake-gtest, behaviortree-cpp, std-msgs, std-srvs, rosidl-default-runtime, nav2-robot, launch, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-crystal-nav2-tasks";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_tasks/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "b070fc9294edfb71eef1e6b0a3442f371d0e82521958328aa54e48d67428a4c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-robot geometry-msgs rclcpp std-msgs std-srvs tf2-geometry-msgs nav2-common tf2 rosidl-default-generators builtin-interfaces nav2-msgs behaviortree-cpp ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rosidl-default-runtime std-msgs tf2-geometry-msgs tf2 builtin-interfaces nav2-msgs behaviortree-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
