
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-jazzy-dynamic-edt-3d";
  version = "1.10.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/jazzy/dynamic_edt_3d/1.10.0-4.tar.gz";
    name = "1.10.0-4.tar.gz";
    sha256 = "e36d197abb65b040593c78095d9c9a451c7c58efb8bedd913fd47388c8d10330";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
