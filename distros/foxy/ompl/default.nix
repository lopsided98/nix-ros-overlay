
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-ompl";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/foxy/ompl/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "d4805d21f58071855d0e835e60b2942bcdb3bc86179cb493ed2b9e8b4e5dc290";
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
