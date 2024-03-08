
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-twist-mux-msgs";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux_msgs-release/archive/release/rolling/twist_mux_msgs/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "31d286bb3ea9e37610aec34c0bb29763c896410b68bdd93d88abeb2d1fc2e96a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The twist_mux msgs and actions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
