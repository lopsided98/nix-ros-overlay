
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rmf-dispenser-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rmf-task-msgs";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/iron/rmf_task_msgs/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "cd8d6d247e97026163ef784f9a69b133c333c395445ef7433bc01c70e8e21478";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rmf-dispenser-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used to specify tasks";
    license = with lib.licenses; [ asl20 ];
  };
}
