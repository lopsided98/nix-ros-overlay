
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, pre-commit, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-humble-jacro";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/JafarAbdi/jacro-release/archive/release/humble/jacro/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "b155f3b71c3cc996ddc5094826cf11a7433ac8f0c31d8a99a0cb69c5b7d46891";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest pre-commit std-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.jinja2 python3Packages.rich ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO: Project Short Description";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
