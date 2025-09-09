
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-xacro";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/xacro-release/archive/release/rolling/xacro/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "38818feea13f23a1c5b06bb7c83f78fe6c7d534469319b1db231b3a2d630dd55";
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
