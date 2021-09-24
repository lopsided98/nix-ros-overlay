
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-galactic-swri-serial-util";
  version = "3.3.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/swri_serial_util/3.3.2-2.tar.gz";
    name = "3.3.2-2.tar.gz";
    sha256 = "c03cede2e989b80f787d31092ebb8530fb7b7eaf5bc255e3f59a8a4aca5a0f02";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
