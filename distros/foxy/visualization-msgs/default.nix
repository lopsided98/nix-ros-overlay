
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-visualization-msgs";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/foxy/visualization_msgs/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "47e0214afe3e7a94c8b2a87d3408ab69ce860663e6d02aa1c3568e10cb0fad8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some visualization and interaction related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
