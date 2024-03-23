
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-xacro";
  version = "2.0.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/xacro-release/archive/release/rolling/xacro/2.0.10-2.tar.gz";
    name = "2.0.10-2.tar.gz";
    sha256 = "c6f6915f55b25c70f70a93fcfba8902ecb930e816312b87a050ab1a775afcccb";
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
