
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-msgs";
  version = "2023.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_msgs/2023.1.1-3.tar.gz";
    name = "2023.1.1-3.tar.gz";
    sha256 = "b83792559ca35c2573d7140ae18ca9fadff553e56798c1042ba5f1c03deef528";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Services and Messages of the webots_ros2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
