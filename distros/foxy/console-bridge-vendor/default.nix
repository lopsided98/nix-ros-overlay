
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, console-bridge, performance-test-fixture }:
buildRosPackage {
  pname = "ros-foxy-console-bridge-vendor";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/foxy/console_bridge_vendor/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "b646b4771e320242ad7d2abeec85f2c11a242a903137e7113f600c26dfc9d08f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ console-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around console_bridge, providing nothing but a dependency on console_bridge, on some systems.
    On others, it provides an ExternalProject build of console_bridge.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
