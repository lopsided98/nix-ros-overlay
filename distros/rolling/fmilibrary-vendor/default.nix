
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-rolling-fmilibrary-vendor";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmilibrary_vendor-release/archive/release/rolling/fmilibrary_vendor/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "90247f6cda47a1109686cf3b46c024528d61581483aef90179f7ddb08f48d250";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)";
    license = with lib.licenses; [ bsd3 ];
  };
}
