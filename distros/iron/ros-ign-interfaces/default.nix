
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, ros-gz-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ros-ign-interfaces";
  version = "0.247.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_interfaces/0.247.0-1.tar.gz";
    name = "0.247.0-1.tar.gz";
    sha256 = "4a4334f124b0f990cc4ee6eba0c7385fc919b25eaf5e83b1960c3ded368c0aed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs ros-gz-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Shim package to redirect to ros_gz_interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
