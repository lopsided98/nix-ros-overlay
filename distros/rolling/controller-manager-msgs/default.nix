
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, lifecycle-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-manager-msgs";
  version = "6.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_manager_msgs/6.3.1-1.tar.gz";
    name = "6.3.1-1.tar.gz";
    sha256 = "872270d29a8aa219ec487058611d879b1b9ded0d0e520847abfa39b04e071c7c";
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
