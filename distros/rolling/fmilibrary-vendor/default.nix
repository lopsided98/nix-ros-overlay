
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-rolling-fmilibrary-vendor";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmilibrary_vendor-release/archive/release/rolling/fmilibrary_vendor/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "e0140366a25ed7526aea9fafe643819f2fe5ce71d594b581202df8b5337a756d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)'';
    license = with lib.licenses; [ bsd3 ];
  };
}
