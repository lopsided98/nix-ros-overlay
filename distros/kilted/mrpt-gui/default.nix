
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, libGL, libGLU, libxrandr, libxxf86vm, mrpt-opengl, python3, python3Packages, qt5, wxwidgets_3_2, xorg }:
buildRosPackage {
  pname = "ros-kilted-mrpt-gui";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_gui/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "14ae06419582b66cc4530865645e80b91f3b4869c7599421d69519a85865d942";
  };

  buildType = "cmake";
  buildInputs = [ cmake libGL libGLU libxrandr libxxf86vm python3 python3Packages.pybind11 qt5.qtbase wxwidgets_3_2 ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ eigen glfw3 mrpt-opengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
