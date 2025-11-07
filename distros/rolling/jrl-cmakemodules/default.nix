
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-jrl-cmakemodules";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/rolling/jrl_cmakemodules/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "38c9dbd4462c2cd7d7e4995e05589201db013a4127de1ff2d40a243dc473d47e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ doxygen pkg-config ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CMake utility toolbox";
    license = with lib.licenses; [ "GPL-3.0" "LGPL-3.0" bsd3 mit asl20 ];
  };
}
