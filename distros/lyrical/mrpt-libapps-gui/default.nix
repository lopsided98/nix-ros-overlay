
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxwidgets_3_2 }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libapps-gui";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_libapps_gui/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "40646a8e7393ad11c0e2be9706b3a3015a845d27989a2ca7108b62f4b89ce8da";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen wxwidgets_3_2 ];
  propagatedBuildInputs = [ mrpt-gui mrpt-libapps-cli ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_libapps_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
