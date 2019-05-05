
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, boost, pkg-config, eigen }:
buildRosPackage {
  pname = "ros-melodic-ompl";
  version = "1.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/ompl-release/archive/release/melodic/ompl/1.4.2-0.tar.gz;
    sha256 = "35d69fbf80c64944c92a69d468823e68bcd7d776750720c7f50c3af09feb1b93";
  };

  buildInputs = [ cmake boost pkg-config eigen ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
