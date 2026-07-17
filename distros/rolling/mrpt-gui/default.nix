
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, libGL, libGLU, libxrandr, libxxf86vm, mrpt-opengl, python3, python3Packages, qt5, wxGTK32 }:
buildRosPackage {
  pname = "ros-rolling-mrpt-gui";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_gui/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "2ccc95375d71de35903ee7e0969b7652ebd48d3d892ca93d94051183a97a145b";
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
