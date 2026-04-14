
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-simulation-interfaces";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simulation_interfaces-release/archive/release/jazzy/simulation_interfaces/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "1042e35320933d2380e2d4fdb29c78d423d2f17cd1ed98e23a2e7ba5f23c1da2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing simulation interfaces including messages, services and actions";
    license = with lib.licenses; [ asl20 ];
  };
}
