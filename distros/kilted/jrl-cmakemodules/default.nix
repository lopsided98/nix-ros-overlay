
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-jrl-cmakemodules";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/kilted/jrl_cmakemodules/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "15b90c1cc3ea43a2895981c96ae5a2fca8dc10e893bd0e67bee7dabaaaccac3e";
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
