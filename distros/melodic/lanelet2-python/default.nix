
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-projection, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-melodic-lanelet2-python";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/melodic/lanelet2_python/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f40a48bceae8f129db010733f9062ff3a738087a532aa373fdc8a63f506dacab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-io lanelet2-projection lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Python bindings for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
