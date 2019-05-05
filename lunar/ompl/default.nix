
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, boost, pkg-config, eigen }:
buildRosPackage {
  pname = "ros-lunar-ompl";
  version = "1.3.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ompl-release/archive/release/lunar/ompl/1.3.5-0.tar.gz;
    sha256 = "173937f60c81ed2558b2f2676171a02895274a8505fd47c2651bb0a016f1c03b";
  };

  buildInputs = [ cmake boost pkg-config eigen ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
