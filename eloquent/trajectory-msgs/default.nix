
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-trajectory-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/trajectory_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "0f9e86c035689d0d3bff16a4585e15e8418a808e007ae62d975a6ce9526d60a7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some robot trajectory message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
