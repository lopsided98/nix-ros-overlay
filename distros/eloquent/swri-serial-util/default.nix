
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-eloquent-swri-serial-util";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_serial_util/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "23d3232ddca32997aae4e0f467c873bd66a45c4b96a637ce51cd150d049bc025";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
