
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lanelet2-core, lanelet2-examples, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-lanelet2";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c34c9b5f14881562d39c80145644750c465f28146f5bf5a3679903728d2be40c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lanelet2-core lanelet2-examples lanelet2-io lanelet2-maps lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules lanelet2-validation ];
  nativeBuildInputs = [ catkin ros-environment ];

  meta = {
    description = ''Meta-package for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
