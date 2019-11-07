
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, rosidl-default-generators, ament-cmake-gtest, launch, nav2-common, action-msgs, rclcpp, std-msgs, ament-lint-auto, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav2-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "3220538320826decbac66d106f33ae8910c05d8b7cf987327d9082e3cf764105";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces rosidl-default-generators nav2-common action-msgs rclcpp std-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces action-msgs rclcpp std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
