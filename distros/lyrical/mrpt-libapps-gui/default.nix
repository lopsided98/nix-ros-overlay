
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxwidgets_3_2 }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libapps-gui";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_libapps_gui/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "2f76664ba28038276ace01447a8a38a4d6ddd601a4746bcec61a300b49b848d9";
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
