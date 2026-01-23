
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, ros-gz-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-ign-interfaces";
  version = "0.244.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_interfaces/0.244.21-1.tar.gz";
    name = "0.244.21-1.tar.gz";
    sha256 = "7580e1a2791bd21a436f171d56fca78cf8d016170ab7e58d7bd8ae1e618d0420";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs ros-gz-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Shim package to redirect to ros_gz_interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
