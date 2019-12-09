
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-swri-serial-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_serial_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "5a114cfe3e684b2477267df2cf2c17cbe5134faef997a7d9d3aef09f7eac0dba";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
