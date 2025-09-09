
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, console-bridge, performance-test-fixture }:
buildRosPackage {
  pname = "ros-rolling-console-bridge-vendor";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/rolling/console_bridge_vendor/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "a40fec74395a91f363bfd36653778105ae9a5b9d158b21f977b716a4742a9c9b";
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
