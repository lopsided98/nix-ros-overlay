
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-picknik-ament-copyright";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_ament_copyright-release/archive/release/iron/picknik_ament_copyright/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "711dc430dbaedb5a60975bef0edbee7a707c30c14595135842ebeb1c215681db";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = ''Check PickNik-specific copyright headers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
