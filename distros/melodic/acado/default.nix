
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-acado";
  version = "1.2.3";

  src = fetchurl {
    url = "https://github.com/tud-cor/acado-release/archive/release/melodic/acado/1.2.3-0.tar.gz";
    name = "1.2.3-0.tar.gz";
    sha256 = "2d84945378a8f8b6c9d8667b4e1aa02a0001130853e6bb04e29dc1906582598e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''ACADO Toolkit'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
