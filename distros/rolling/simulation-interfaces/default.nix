
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-simulation-interfaces";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simulation_interfaces-release/archive/release/rolling/simulation_interfaces/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "ac8622bf80f0518d7fc68ce0df12ecf3e6937bf5b0d0fbd9950bb64d65cbd45e";
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
