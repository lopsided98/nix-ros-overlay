
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-xacro";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/xacro-release/archive/release/galactic/xacro/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "a19776141cc41b8e0ccb9fc1f37a8027d9be748ea0d7f83a22e45bcaf5c70d36";
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
