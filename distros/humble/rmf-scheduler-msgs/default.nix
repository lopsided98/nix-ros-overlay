
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rmf-scheduler-msgs";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/humble/rmf_scheduler_msgs/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "53c754270d6fdcfe73cf24da50b99f2df31c331abe9c6902aa5da639865781e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages used by rmf_scheduler_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
