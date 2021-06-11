
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-xacro";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/xacro-release/archive/release/galactic/xacro/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "7b4cea7136e4c340cacf3e08d63adfe6e34923baec25425adf0969e6765dbcd6";
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
