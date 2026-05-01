
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-data-tamer-msgs";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/lyrical/data_tamer_msgs/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "82219a2e56459d8e4a38fdc1c31d96172f3a25a7e0f3b2480ef672ab9104e630";
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
