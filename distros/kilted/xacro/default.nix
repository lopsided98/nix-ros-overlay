
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-xacro";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/xacro-release/archive/release/kilted/xacro/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "d9ab5d959f60d75460d7dc4426d4cfbbfc4beb0294900d8d6166d5e3ae5e6c7e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Xacro (XML Macros)
    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
