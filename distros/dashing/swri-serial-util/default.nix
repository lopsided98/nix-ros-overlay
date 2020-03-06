
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-dashing-swri-serial-util";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_serial_util/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "4597d0be4428e18f2061619ebdea4ae36fe0eb24d9726ce70b746eb0470a34ab";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
