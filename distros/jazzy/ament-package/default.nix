
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-package";
  version = "0.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/jazzy/ament_package/0.16.5-1.tar.gz";
    name = "0.16.5-1.tar.gz";
    sha256 = "5df6644c98e7d8b035f9700e1f3012c7563c5190c68e3032ce9c126709855680";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];
  nativeBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = "The parser for the manifest files in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
