
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-data-tamer-msgs";
  version = "0.9.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/rolling/data_tamer_msgs/0.9.4-3.tar.gz";
    name = "0.9.4-3.tar.gz";
    sha256 = "3679e360887214865eed5af5e75f9b5cf28b291c4ecd173947faa135a1055af6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Interfaces for data_tamer'';
    license = with lib.licenses; [ mit ];
  };
}
