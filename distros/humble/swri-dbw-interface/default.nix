
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-swri-dbw-interface";
  version = "3.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_dbw_interface/3.8.9-1.tar.gz";
    name = "3.8.9-1.tar.gz";
    sha256 = "310699805d60f97d0dfc428f27eb31fa526d7d05fb81bc7e04a6462852555d84";
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
