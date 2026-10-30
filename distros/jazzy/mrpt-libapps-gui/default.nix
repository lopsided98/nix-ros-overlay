
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxwidgets_3_2 }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libapps-gui";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_libapps_gui/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "412688a09cf1a2ed24cc66ac34f0ec2d863be7ff55b55f52a2e1eadab047e73c";
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
