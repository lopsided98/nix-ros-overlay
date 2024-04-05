
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rmf-scheduler-msgs";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/iron/rmf_scheduler_msgs/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "4563b077b8d9d6482f040fb20f43078d8b5d94e1431d2358a292a3fa76afff3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages used by rmf_scheduler_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
