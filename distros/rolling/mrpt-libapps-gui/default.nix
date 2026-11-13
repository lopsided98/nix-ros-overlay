
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxwidgets_3_2 }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libapps-gui";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_libapps_gui/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "43dc68bbdac2d6a1710f3bb3fa28d0416713a7af95e91c179973ed81ae3ac01f";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mrpt-gui mrpt-libapps-cli wxwidgets_3_2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_libapps_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
