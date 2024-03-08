
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, uncrustify }:
buildRosPackage {
  pname = "ros-rolling-uncrustify-vendor";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/rolling/uncrustify_vendor/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "82c953f11dba9871592f61b90672bafbf8c4522170043e78f386c1a56fa91db9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ uncrustify ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''Wrapper around uncrustify, providing nothing but a dependency on uncrustify, on some systems.
    On others, it provides an ExternalProject build of uncrustify.'';
    license = with lib.licenses; [ asl20 "GPL-2.0-only" ];
  };
}
