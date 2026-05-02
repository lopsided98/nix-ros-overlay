
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libGL, libGLU, libcxx, xorg }:
buildRosPackage {
  pname = "ros-rolling-open3d-vendor";
  version = "0.19.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open3d_vendor-release/archive/release/rolling/open3d_vendor/0.19.0-2.tar.gz";
    name = "0.19.0-2.tar.gz";
    sha256 = "8a5722da8802943842bcf9a0d3ee911ab43e40429014e811595d5a0e30a00103";
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
