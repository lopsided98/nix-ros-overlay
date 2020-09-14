
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-xacro";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/dashing/xacro/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "1f80f6bdc44f2bef9a6ac24c326ec76062292d69337df52ec1de3d30e1bdd267";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Xacro (XML Macros)
    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
