
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-humble-xacro";
  version = "2.0.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/xacro-release/archive/release/humble/xacro/2.0.7-3.tar.gz";
    name = "2.0.7-3.tar.gz";
    sha256 = "c89380c24aa4c6fcb40695af92af7ed2f04527af561d1ba7331e9c411fa54194";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Xacro (XML Macros)
    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
