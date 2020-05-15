
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-eloquent-plotjuggler-msgs";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler_msgs-release/archive/release/eloquent/plotjuggler_msgs/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "d529ab8d4eb8051d63e641d4f4f4b2e67b398a7fab49efb328c7ed200dd4bcd0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Special Messages for PlotJuggler'';
    license = with lib.licenses; [ mit ];
  };
}
