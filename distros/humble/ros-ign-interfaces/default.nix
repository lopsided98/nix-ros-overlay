
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, ros-gz-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-ign-interfaces";
  version = "0.244.27-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_interfaces/0.244.27-1.tar.gz";
    name = "0.244.27-1.tar.gz";
    sha256 = "4252e563ef173da418515a0c4b69676c0c31655e635ff7cd91dcaf891f364f8d";
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
