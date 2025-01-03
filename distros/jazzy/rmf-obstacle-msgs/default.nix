
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmf-obstacle-msgs";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/jazzy/rmf_obstacle_msgs/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "a6f0bc277bba6aef1c1e960fd5cfd6075dd33a2b1c6b41026d05f91cc595dc78";
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
