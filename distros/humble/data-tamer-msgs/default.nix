
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-data-tamer-msgs";
  version = "0.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/humble/data_tamer_msgs/0.9.3-2.tar.gz";
    name = "0.9.3-2.tar.gz";
    sha256 = "6121df2fbd6863ced8f7e66394f91ce96355370fe8a29910567d8ee16e6b8f9d";
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
