
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, libGL, libGLU, libxrandr, libxxf86vm, mrpt-opengl, python3, python3Packages, qt5, wxwidgets_3_2, xorg }:
buildRosPackage {
  pname = "ros-kilted-mrpt-gui";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_gui/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "cda827e5c9d5fc23932d895897e3d702b3e614eb88fcbdd786b87d2e19dbc780";
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
