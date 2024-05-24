
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rmf-charger-msgs";
  version = "3.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/jazzy/rmf_charger_msgs/3.2.1-3.tar.gz";
    name = "3.2.1-3.tar.gz";
    sha256 = "e5cbf95e95339dec38fa2a074c41e4f338b571f7399b24281d6a6462964e680a";
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
