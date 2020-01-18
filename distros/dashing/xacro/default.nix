
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-xacro";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/dashing/xacro/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "c24475d924228bf75f7260fb8d3454dfa4af6add26078b04b61ccdc385049c31";
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
