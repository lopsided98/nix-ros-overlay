
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-crystal-xacro";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/crystal/xacro/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "f5866ae3354f37eb0f2831c9c3b373086cf33c3db704e1f58a92f8cdd3722101";
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
