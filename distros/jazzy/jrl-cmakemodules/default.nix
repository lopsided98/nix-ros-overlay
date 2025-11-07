
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-jrl-cmakemodules";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/jazzy/jrl_cmakemodules/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "a21317aaa4a1200045ca50534aebd265b0b5cc6a4e0b3c136a0bfde3a93b054f";
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
