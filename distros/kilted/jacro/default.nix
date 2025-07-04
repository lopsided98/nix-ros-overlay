
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, pre-commit, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-jacro";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jacro-release/archive/release/kilted/jacro/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "09fd8a6dbac64c4f37a0eb7f3a6dbfcb783ad9eaf1af18481e485ee19fce418f";
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
