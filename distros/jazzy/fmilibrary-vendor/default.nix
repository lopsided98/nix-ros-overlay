
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-jazzy-fmilibrary-vendor";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmilibrary_vendor-release/archive/release/jazzy/fmilibrary_vendor/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f1db641cefa5378b6e3bc948cf1c8abe2457f0b9d11ad60b73be2924834d3161";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)";
    license = with lib.licenses; [ bsd3 ];
  };
}
