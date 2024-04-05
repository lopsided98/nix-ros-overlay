
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rmf-lift-msgs";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/iron/rmf_lift_msgs/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "c9a72c2ccaac41eb3391ddaa191ba4d9db57ec959ac947122dbb4d90f2ab66b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages used to interface to lifts.";
    license = with lib.licenses; [ asl20 ];
  };
}
