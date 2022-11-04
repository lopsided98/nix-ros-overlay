
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-melodic-lanelet2-maps";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/melodic/lanelet2_maps/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d3a607df84c727c2c9190f5b4a50d6733637b4962819f9897a0f0063ddeb3a3f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Example maps in the lanelet2-format'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
