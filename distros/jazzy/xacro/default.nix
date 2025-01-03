
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-xacro";
  version = "2.0.11-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/xacro-release/archive/release/jazzy/xacro/2.0.11-2.tar.gz";
    name = "2.0.11-2.tar.gz";
    sha256 = "a0fcdf6884d34db999f66f4cdb941af7bae0486742e05a89ea6b8405abdf08c2";
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
