
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler-msgs";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler_msgs-release/archive/release/foxy/plotjuggler_msgs/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "8eaaa4edd0769369814358e7d4efd264bfd86a604f731ca288b8510df2278a33";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Special Messages for PlotJuggler'';
    license = with lib.licenses; [ mit ];
  };
}
