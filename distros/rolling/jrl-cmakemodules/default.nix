
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-jrl-cmakemodules";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/rolling/jrl_cmakemodules/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "ae6e6d6ba3a327fc2a7e5321f95d0f9171dc63100a95f44992753518ceebb64e";
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
