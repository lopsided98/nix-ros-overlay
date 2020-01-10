
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, behaviortree-cpp, builtin-interfaces, geometry-msgs, launch, launch-testing, nav2-common, nav2-msgs, nav2-robot, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-tasks";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_tasks/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "b070fc9294edfb71eef1e6b0a3442f371d0e82521958328aa54e48d67428a4c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common nav2-robot rosidl-default-generators std-srvs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ behaviortree-cpp builtin-interfaces geometry-msgs nav2-msgs rclcpp rosidl-default-runtime std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
