
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rt-manipulators-cpp }:
buildRosPackage {
  pname = "ros-foxy-rt-manipulators-examples";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_manipulators_cpp-release/archive/release/foxy/rt_manipulators_examples/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8f3b1ee3e5aafaa221f3ffe7bdacf16ebf4764c69527782de1b6bb601ae608d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rt-manipulators-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples for RT Manipulators C++ Library'';
    license = with lib.licenses; [ asl20 ];
  };
}
