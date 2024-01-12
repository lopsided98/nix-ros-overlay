
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-iron-fmilibrary-vendor";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmilibrary_vendor-release/archive/release/iron/fmilibrary_vendor/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "5cf3da223279f8f338b6d917d1fa1890f5f4dc7214421375f4fce2e536afcdd2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)'';
    license = with lib.licenses; [ bsd3 ];
  };
}
