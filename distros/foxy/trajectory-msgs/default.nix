
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-trajectory-msgs";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/foxy/trajectory_msgs/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "ff1eef5fb5817998de660621cbe59a3c9403e31cfc05fb351131e1046d5aa383";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some robot trajectory message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
