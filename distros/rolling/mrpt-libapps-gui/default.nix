
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxwidgets_3_2 }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libapps-gui";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_libapps_gui/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "ddd5c66ae14dfa3a29be9fd2ffaceed8ede66ec2df05d63afa7d19a33276ecc6";
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
