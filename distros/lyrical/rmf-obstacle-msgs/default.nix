
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-obstacle-msgs";
  version = "4.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/lyrical/rmf_obstacle_msgs/4.0.0-3.tar.gz";
    name = "4.0.0-3.tar.gz";
    sha256 = "da447092311419db7ec3f85582e288d07efd563122de4c69c702dbc6cf299e5c";
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
