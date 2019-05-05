
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, python3 }:
buildRosPackage {
  pname = "ros-lunar-catkin-virtualenv";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/locusrobotics/catkin_virtualenv-release/archive/release/lunar/catkin_virtualenv/0.2.0-0.tar.gz;
    sha256 = "7a7d2a3b65a25b3c4b368b3b953b8c91e2947dbb6fccf8e54554bc64490d4892";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pythonPackages.virtualenv pythonPackages.enum34 python3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bundle python requirements in a catkin package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
