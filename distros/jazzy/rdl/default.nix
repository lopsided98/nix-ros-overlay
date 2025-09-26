
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rdl-benchmark, rdl-dynamics, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-jazzy-rdl";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/jlack1987/rdl-release/archive/release/jazzy/rdl/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "6ed6dfc04dfc127cc5a14cf9503c2fa90c084d4604cd6756a649758527444097";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rdl-benchmark rdl-dynamics rdl-urdfreader ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rdl meta-package";
    license = with lib.licenses; [ "Zlib" ];
  };
}
