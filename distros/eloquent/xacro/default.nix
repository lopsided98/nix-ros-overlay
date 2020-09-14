
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-eloquent-xacro";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/eloquent/xacro/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "6344ded2944fc965d2ef5a370c9c0e08080e2678b401aee81df823aa2888a3de";
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
