
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-humble-dynamic-edt-3d";
  version = "1.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/humble/dynamic_edt_3d/1.9.8-1.tar.gz";
    name = "1.9.8-1.tar.gz";
    sha256 = "7398fc802f3e6eeb62dfe98df24637fdfcf9cdce9aa7a09859a2d16c1778f865";
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
