
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, libGL, libGLU, libxrandr, libxxf86vm, mrpt-opengl, python3, python3Packages, qt5, wxwidgets_3_2, xorg }:
buildRosPackage {
  pname = "ros-kilted-mrpt-gui";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_gui/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "5bd6ae5cf20fc9a28bfad573b0c5c948a6e16a93d28677dd353544affa22ae1a";
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
