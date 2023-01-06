
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-picknik-ament-copyright";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_ament_copyright-release/archive/release/rolling/picknik_ament_copyright/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "48f7a7ad8667dfa7077ae7c3e87a13604a3780e469ea77c968254c96cf85d5f8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = ''Check PickNik-specific copyright headers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
