
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-foxy-swri-serial-util";
  version = "3.3.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/foxy/swri_serial_util/3.3.2-2.tar.gz";
    name = "3.3.2-2.tar.gz";
    sha256 = "74cfaf9e19c30f9a9c2e60f9ea1a15659ece2c82346dd2fb3595f1e7e8c65b8b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
