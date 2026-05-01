
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libGL, libGLU, libcxx, xorg }:
buildRosPackage {
  pname = "ros-lyrical-open3d-vendor";
  version = "0.19.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open3d_vendor-release/archive/release/lyrical/open3d_vendor/0.19.0-3.tar.gz";
    name = "0.19.0-3.tar.gz";
    sha256 = "a04e56296c5dd7b37e2aad38715316637099b473b9d93eda0c1e2a25473506bc";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ libGL libGLU libcxx xorg.libX11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Open3D is an open-source library that supports rapid development of software that deals with 3D data.";
    license = with lib.licenses; [ mit ];
  };
}
