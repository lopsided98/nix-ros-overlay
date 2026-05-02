
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, pre-commit, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-jacro";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jacro-release/archive/release/rolling/jacro/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "826211edd5a77054ad445c86dfa0651a3035fc26721289f14d0bc1508d147e47";
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
