
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, pkg-config }:
buildRosPackage {
  pname = "ros-dashing-ompl";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/dashing/ompl/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "06cd4af5ccb402f03a41db9d063451a4500bea982933d2f5b23fd514ff47b08e";
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
