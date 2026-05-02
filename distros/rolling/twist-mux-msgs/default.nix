
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-twist-mux-msgs";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux_msgs-release/archive/release/rolling/twist_mux_msgs/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "efea8476cad1b140cf4539e1fc600d6c76b5a74a65742c45071eaa6e22ec825c";
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
