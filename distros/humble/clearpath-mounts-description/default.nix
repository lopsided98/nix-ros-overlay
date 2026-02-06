
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-clearpath-mounts-description";
  version = "1.3.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_mounts_description/1.3.9-1.tar.gz";
    name = "1.3.9-1.tar.gz";
    sha256 = "ab0796beb7abc7e01c50f49b3711e8b873733c0e95d0294234b821e99e53ee57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath mounts URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
