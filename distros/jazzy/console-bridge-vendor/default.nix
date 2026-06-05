
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, console-bridge, performance-test-fixture }:
buildRosPackage {
  pname = "ros-jazzy-console-bridge-vendor";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/jazzy/console_bridge_vendor/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "45819ea2807982fc81b22fa0cb85ba05860c2c814e9477bf4ee95a8f7e7b405b";
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
