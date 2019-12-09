
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclcpp, launch, std-msgs, rosidl-default-runtime, launch-testing, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-gtest, nav2-common, ament-cmake-pytest, rosidl-default-generators, builtin-interfaces, action-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav2-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "3220538320826decbac66d106f33ae8910c05d8b7cf987327d9082e3cf764105";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs rclcpp std-msgs nav2-common rosidl-default-generators builtin-interfaces action-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rosidl-default-runtime std-msgs builtin-interfaces action-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
