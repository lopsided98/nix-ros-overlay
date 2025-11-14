
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-jrl-cmakemodules";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/jazzy/jrl_cmakemodules/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "399256dfb0e37d7ccd5a5e5a29ff6046f4e26ab04da4a0a0750ba11d4fad1170";
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
