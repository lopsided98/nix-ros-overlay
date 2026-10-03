
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-fss-time-interfaces";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastswarmsim-release/archive/release/humble/fss_time_interfaces/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "c83f70c0d3c3c9f5eca1ec119c5e608f1e8419a38e06db2a252271178c6223e7";
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
