
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-twist-mux-msgs";
  version = "3.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux_msgs-release/archive/release/lyrical/twist_mux_msgs/3.0.1-4.tar.gz";
    name = "3.0.1-4.tar.gz";
    sha256 = "664007a09396d60f1cff9bf0f2e5e8c0f6148f90167e807f0fb8b11638d70d75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The twist_mux msgs and actions package";
    license = with lib.licenses; [ asl20 ];
  };
}
