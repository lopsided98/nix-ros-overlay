
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-autoware-control-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/humble/autoware_control_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "f5d2d8d1906bb8386deae19c3b7c29d029a97bbfff442fc14c68869c0f39a499";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware control messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
