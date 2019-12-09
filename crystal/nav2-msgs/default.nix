
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclcpp, launch, std-msgs, rosidl-default-runtime, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, ament-cmake-pytest, rosidl-default-generators, builtin-interfaces, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-msgs";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_msgs/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "8e9fea4bc061a90e57516cabb3b22badf16f496c002a6292b22a4ecf08954e33";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs rclcpp std-msgs nav2-common rosidl-default-generators builtin-interfaces ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rosidl-default-runtime std-msgs builtin-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
