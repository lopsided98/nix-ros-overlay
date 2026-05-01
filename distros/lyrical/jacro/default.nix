
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, pre-commit, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-jacro";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jacro-release/archive/release/lyrical/jacro/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "08c2e8906d86d76895c4b89f45f50d1885a3a9baae29e6f3b82b524e07478775";
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
