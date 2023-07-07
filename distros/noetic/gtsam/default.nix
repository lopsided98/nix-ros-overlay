
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb }:
buildRosPackage {
  pname = "ros-noetic-gtsam";
  version = "4.2.0-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/gtsam-release/archive/release/noetic/gtsam/4.2.0-2.tar.gz";
    name = "4.2.0-2.tar.gz";
    sha256 = "9a193b03fdfec03eefc3d369af0032d2f12bd3abd5a84207e0593e7813a00bea";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''gtsam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
