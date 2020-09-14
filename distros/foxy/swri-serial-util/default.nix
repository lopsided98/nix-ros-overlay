
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-foxy-swri-serial-util";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/foxy/swri_serial_util/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "a40065ca13a86021ee847d54722def827047689c3a1a442ed417a1000c2b570d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
