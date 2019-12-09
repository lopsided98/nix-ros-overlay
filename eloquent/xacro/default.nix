
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-xacro";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/eloquent/xacro/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "01bc661553bdb5c16ad426d47c5896c934cd7dd6cfdd2be179396d1bf41a8e98";
  };

  buildType = "ament_cmake";
  buildInputs = [ python3Packages.pyyaml ament-index-python ];
  checkInputs = [ ament-lint-auto ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Xacro (XML Macros)
    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
