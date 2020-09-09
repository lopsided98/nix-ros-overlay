
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lanelet2-core, lanelet2-examples, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation }:
buildRosPackage {
  pname = "ros-noetic-lanelet2";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "70614e47fae35fc4d01fde6fb0797615c9de70bd754b783fd423fac10c534b45";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lanelet2-core lanelet2-examples lanelet2-io lanelet2-maps lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules lanelet2-validation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
