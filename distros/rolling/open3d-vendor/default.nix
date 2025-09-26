
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libGL, libGLU, libcxx, xorg }:
buildRosPackage {
  pname = "ros-rolling-open3d-vendor";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open3d_vendor-release/archive/release/rolling/open3d_vendor/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "3a16dc07948c82cd622ad7fcc7265adf04ac0d3b1b992ae2a3de6c5c1529cb70";
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
