
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, boost, pkg-config, eigen }:
buildRosPackage {
  pname = "ros-melodic-ompl";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/melodic/ompl/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "cdcd1f9c8f7d876221b6a1867cfb0ec99a3607a7c5118942fd430df007d8de70";
  };

  buildType = "cmake";
  buildInputs = [ cmake boost pkg-config eigen ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
