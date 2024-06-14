
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-obstacle-msgs";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_obstacle_msgs/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "615006fa2fb4eb9b9fd2011d4c701d43cf7c84a8760992d7473ba0c06b5dcca4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages for describing obstacles in the environment";
    license = with lib.licenses; [ asl20 ];
  };
}
