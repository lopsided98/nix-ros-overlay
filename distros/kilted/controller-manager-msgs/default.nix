
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, lifecycle-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-controller-manager-msgs";
  version = "5.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/controller_manager_msgs/5.11.1-1.tar.gz";
    name = "5.11.1-1.tar.gz";
    sha256 = "b68e2f8a5f0e826d52eb7b00500c8185af8c3570d0205bf7d64c244842799fef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages and services for the controller manager.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
