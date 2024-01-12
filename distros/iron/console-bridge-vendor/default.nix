
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, console-bridge, performance-test-fixture }:
buildRosPackage {
  pname = "ros-iron-console-bridge-vendor";
  version = "1.6.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/iron/console_bridge_vendor/1.6.0-4.tar.gz";
    name = "1.6.0-4.tar.gz";
    sha256 = "ed54740ad24f8bd36e9b50223bb2a5ff98a202e10efd53be0d03c21ce553a149";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ console-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around console_bridge, providing nothing but a dependency on console_bridge, on some systems.
    On others, it provides an ExternalProject build of console_bridge.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
