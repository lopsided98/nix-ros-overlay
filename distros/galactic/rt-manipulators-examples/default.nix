
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rt-manipulators-cpp }:
buildRosPackage {
  pname = "ros-galactic-rt-manipulators-examples";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_manipulators_cpp-release/archive/release/galactic/rt_manipulators_examples/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1f9114b20b8336de6c2e70152ce97c702e83bc880d1b3c6d07bb6aecdf4aeb79";
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
