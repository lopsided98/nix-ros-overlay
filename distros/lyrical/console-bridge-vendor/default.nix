
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, console-bridge, performance-test-fixture }:
buildRosPackage {
  pname = "ros-lyrical-console-bridge-vendor";
  version = "1.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/lyrical/console_bridge_vendor/1.9.1-3.tar.gz";
    name = "1.9.1-3.tar.gz";
    sha256 = "0a4a5c3b97c6ba5924f56f615d5cbc62f7b9f8e962fe1af0e9a40068a3aca785";
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
