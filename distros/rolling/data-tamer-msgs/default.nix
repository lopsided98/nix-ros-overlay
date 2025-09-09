
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-data-tamer-msgs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/rolling/data_tamer_msgs/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "eaa27a37632c7cb2cd6f9dd0b37169011041fe584ae9c0e24383b4a2290f2e2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interfaces for data_tamer";
    license = with lib.licenses; [ mit ];
  };
}
