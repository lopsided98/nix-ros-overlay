
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-swri-dbw-interface";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/lyrical/swri_dbw_interface/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "a2c0b0478221a3b7c51470efd74023d0051108090110fe2fe0d6e353814ba269";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides documentation on common interface conventions for
    drive-by-wire systems.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
