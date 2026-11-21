
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, libGL, libGLU, libxrandr, libxxf86vm, mrpt-opengl, python3, python3Packages, qt5, wxwidgets_3_2, xorg }:
buildRosPackage {
  pname = "ros-rolling-mrpt-gui";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_gui/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "f115b6f35042d10a933763e9e1f4e3e3740c92700ddd994529c09f1c3c2bf32e";
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
