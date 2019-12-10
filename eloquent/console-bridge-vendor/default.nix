
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, console-bridge }:
buildRosPackage {
  pname = "ros-eloquent-console-bridge-vendor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/eloquent/console_bridge_vendor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "71d113e67e92b8147692c20696959cd7030414094de903c432788bdef8a14e88";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ console-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around console_bridge, providing nothing but a dependency on console_bridge, on some systems.
    On others, it provides an ExternalProject build of console_bridge.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
