
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-kilted-fmilibrary-vendor";
  version = "1.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmilibrary_vendor-release/archive/release/kilted/fmilibrary_vendor/1.0.1-5.tar.gz";
    name = "1.0.1-5.tar.gz";
    sha256 = "f2648c2926a16b4c769a9e8ef0781b1bb753965fb7a5ba90037bdf43e0024efa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)";
    license = with lib.licenses; [ bsd3 ];
  };
}
