
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rmf-charger-msgs";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/iron/rmf_charger_msgs/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "dfb0d96193a5a0bed7a60ed2656682d66a6aeefd7315329308c7a81c7e127377";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This package contains messages regarding charging and discharging";
    license = with lib.licenses; [ asl20 ];
  };
}
