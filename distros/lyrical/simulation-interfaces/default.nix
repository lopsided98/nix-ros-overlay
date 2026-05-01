
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-simulation-interfaces";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simulation_interfaces-release/archive/release/lyrical/simulation_interfaces/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "29b20b9cd85f9806c2bd22fde126a4923137feffb1c065285b63b880c3402593";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing simulation interfaces including messages, services and actions";
    license = with lib.licenses; [ asl20 ];
  };
}
