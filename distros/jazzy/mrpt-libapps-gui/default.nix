
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxwidgets_3_2 }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libapps-gui";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_libapps_gui/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "221dca0fc446abd64184efd97679d4cb5366ed931e0812d6d81493cd9712ddaf";
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
