
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxGTK32 }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libapps-gui";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_libapps_gui/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "dcecd8cc59c50394645aa6a6b09f7f34775f94d12556e822961d5b06f2a3a539";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen wxGTK32 ];
  propagatedBuildInputs = [ mrpt-gui mrpt-libapps-cli ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_libapps_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
