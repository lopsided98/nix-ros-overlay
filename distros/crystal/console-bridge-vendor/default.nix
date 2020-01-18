
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, console-bridge }:
buildRosPackage {
  pname = "ros-crystal-console-bridge-vendor";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/console_bridge_vendor-release/archive/release/crystal/console_bridge_vendor/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "1a8eb7126fa9825f35ad4f5373646c2df8b68595d0d6e4c2a595c3916e8f7722";
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
