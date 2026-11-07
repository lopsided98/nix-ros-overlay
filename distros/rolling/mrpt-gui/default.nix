
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, libGL, libGLU, libxrandr, libxxf86vm, mrpt-opengl, python3, python3Packages, qt5, wxwidgets_3_2, xorg }:
buildRosPackage {
  pname = "ros-rolling-mrpt-gui";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_gui/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "3020b197ce8fac050b75932f6d919e959eccf1eaa584107c72cad22e56cb2e29";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ eigen glfw3 libGL libGLU libxrandr libxxf86vm mrpt-opengl qt5.qtbase wxwidgets_3_2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
