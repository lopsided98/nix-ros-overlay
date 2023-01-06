
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rmf-workcell-msgs";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/humble/rmf_workcell_msgs/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "bf623c7cc0db874893a4dd189a6f17feb422d28174203a7d8b68d8b323107cab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing messages used by all workcells generically to interfact with rmf_core'';
    license = with lib.licenses; [ asl20 ];
  };
}
