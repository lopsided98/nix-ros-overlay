
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, libGL, libGLU, libxrandr, libxxf86vm, mrpt-opengl, python3, python3Packages, qt5, wxGTK32 }:
buildRosPackage {
  pname = "ros-kilted-mrpt-gui";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_gui/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "62fd6610fda2f7a6e7a3222e9405d2e05efcf34ad9d467c240eb4bfe7d0c8670";
  };

  buildType = "cmake";
  buildInputs = [ cmake libGL libGLU libxrandr libxxf86vm python3 python3Packages.pybind11 qt5.qtbase wxGTK32 ];
  propagatedBuildInputs = [ eigen glfw3 mrpt-opengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
