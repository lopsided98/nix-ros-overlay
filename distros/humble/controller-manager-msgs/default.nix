
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, lifecycle-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-controller-manager-msgs";
  version = "2.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager_msgs/2.36.0-1.tar.gz";
    name = "2.36.0-1.tar.gz";
    sha256 = "ad1ad7ff378afe6bf943b4cbbf604d3b6f1445ce01bb254a79a56ebe13e45255";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
