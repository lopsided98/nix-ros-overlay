
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, console-bridge, performance-test-fixture }:
buildRosPackage {
  pname = "ros-jazzy-console-bridge-vendor";
  version = "1.7.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/jazzy/console_bridge_vendor/1.7.1-3.tar.gz";
    name = "1.7.1-3.tar.gz";
    sha256 = "3331c618cf351f15480d2090374647b5b842a4e42b6e565d080c5caa35b3987b";
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
