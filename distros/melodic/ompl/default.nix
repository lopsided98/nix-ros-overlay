
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-ompl";
  version = "1.4.2-r5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/melodic/ompl/1.4.2-5.tar.gz";
    name = "1.4.2-5.tar.gz";
    sha256 = "9d948c9a1b3172665a402240eaa980066db8ce1ca27a5d1646d1798d083c518f";
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
