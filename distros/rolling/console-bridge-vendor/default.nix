
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, console-bridge, performance-test-fixture }:
buildRosPackage {
  pname = "ros-rolling-console-bridge-vendor";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/rolling/console_bridge_vendor/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "2d05cbe17e5c420676e68be87a264951c7ad8aa2b88f044eb7ed9b87969012d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ console-bridge ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around console_bridge, providing nothing but a dependency on console_bridge, on some systems.
    On others, it provides an ExternalProject build of console_bridge.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
