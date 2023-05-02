
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-rolling-service-msgs";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/service_msgs/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "8b84a0461f3c8318e4648975acb65de07af63f4b3b702f38e6d9fb67a22a965d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-core-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = ''Messages definitions common among all ROS services'';
    license = with lib.licenses; [ asl20 ];
  };
}
