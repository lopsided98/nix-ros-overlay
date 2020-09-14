
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, console-bridge }:
buildRosPackage {
  pname = "ros-foxy-console-bridge-vendor";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/foxy/console_bridge_vendor/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "b8ed773d0f7d7ceabf6981e0346c9e6b6bceee4f874ed591b534b02b14675a72";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ console-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around console_bridge, providing nothing but a dependency on console_bridge, on some systems.
    On others, it provides an ExternalProject build of console_bridge.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
