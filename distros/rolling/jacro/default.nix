
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, pre-commit, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-jacro";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jacro-release/archive/release/rolling/jacro/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "eeef60f7d9b4e0db318bf7820cd7bd26d8aced1d30039f40459679b2c167de78";
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
