
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rmf-charger-msgs";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/iron/rmf_charger_msgs/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "8ab0b9ef6e8fd2590dc2132b2fbc04c7947064a89cc5e971c2d9c09ad9085480";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''This package contains messages regarding charging and discharging'';
    license = with lib.licenses; [ asl20 ];
  };
}
