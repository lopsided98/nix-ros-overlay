
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rmf-dispenser-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-task-msgs";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_task_msgs/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "d99e5710c9d159fda1a48049798b4ddb96f3a69f65b51f8fad06a0f4db149358";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rmf-dispenser-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing messages used to specify tasks'';
    license = with lib.licenses; [ asl20 ];
  };
}
