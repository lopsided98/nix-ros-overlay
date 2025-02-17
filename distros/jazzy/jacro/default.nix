
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, pre-commit, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-jacro";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jacro-release/archive/release/jazzy/jacro/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "9af29e505435917e6b79d3bd5ac2ce0eca522d009b6a152e965b3dd01f4c4cb6";
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
