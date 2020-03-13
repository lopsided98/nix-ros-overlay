
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-dashing-swri-serial-util";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_serial_util/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "31c6b1c337648d7bf51b49baf6d9e2dba9bfc81c5c91da3621ba00cc5f0c7d4c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
