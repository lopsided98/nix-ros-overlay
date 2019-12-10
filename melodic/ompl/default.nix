
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-ompl";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/melodic/ompl/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "74c8448f36a36f6fae0f8eeb78fc259a4d9e3b1a6b7a51b190a113039324e77e";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
