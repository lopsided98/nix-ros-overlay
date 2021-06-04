
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-xacro";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/dashing/xacro/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "52007956467b73d0e7b76126c0aeef7b956710701411b74db4126cca590465f1";
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
