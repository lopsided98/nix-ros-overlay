
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-jrl-cmakemodules";
  version = "1.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/lyrical/jrl_cmakemodules/1.1.2-3.tar.gz";
    name = "1.1.2-3.tar.gz";
    sha256 = "b8f9abde3ea607e033f4c8758facd9ffb75a2299a1bc69c695345342445760e8";
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
