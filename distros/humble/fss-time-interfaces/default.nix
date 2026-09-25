
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-fss-time-interfaces";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastswarmsim-release/archive/release/humble/fss_time_interfaces/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "d1040f557889e9be1e1ab15dbe69d2fba4ac2040f8ac9fe904b224bbddf51aca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Distributed simulation time interfaces for FastSwarmSim.";
    license = with lib.licenses; [ bsd3 ];
  };
}
