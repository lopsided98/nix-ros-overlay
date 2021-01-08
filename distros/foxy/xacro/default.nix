
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-xacro";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/foxy/xacro/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "8587a520398bf2811e889c3dd40a2f3a03ba6476e0bfdbf5e36db88eca05ce05";
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
