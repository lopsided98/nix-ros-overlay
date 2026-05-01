
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-rmf-visualization-msgs";
  version = "1.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization_msgs-release/archive/release/lyrical/rmf_visualization_msgs/1.5.0-3.tar.gz";
    name = "1.5.0-3.tar.gz";
    sha256 = "3e32b45eb5d8432c6d743c6bea029ff6a1165876250c1356480f2dee990f2c7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used for visualizations";
    license = with lib.licenses; [ asl20 ];
  };
}
