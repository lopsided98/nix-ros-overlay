
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-rolling-swri-serial-util";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_serial_util/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "d4730128ba5553b3ad43275275e145c4dc0e2613aa145fddf6f2d403e4920668";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
