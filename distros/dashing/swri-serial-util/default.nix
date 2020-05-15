
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-dashing-swri-serial-util";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_serial_util/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "6ce76ea1e2a44e5353f2511a7e623d5e2c14a32ef815914f30173de4768dfd01";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
