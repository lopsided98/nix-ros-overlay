
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-rolling-dynamic-edt-3d";
  version = "1.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/rolling/dynamic_edt_3d/1.9.8-1.tar.gz";
    name = "1.9.8-1.tar.gz";
    sha256 = "89c40e04e2168de03a796ba102bb2ba1c11c7588e249c068b9ee377db0c37736";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
