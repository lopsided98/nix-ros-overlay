
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-xacro";
  version = "2.0.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/xacro-release/archive/release/rolling/xacro/2.0.12-1.tar.gz";
    name = "2.0.12-1.tar.gz";
    sha256 = "2af6d5c8e0b645b62dbf7af0ea47676dcd70adf656bf9c9b6311b35bb2b8be81";
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
