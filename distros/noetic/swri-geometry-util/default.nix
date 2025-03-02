
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geos, pkg-config, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-swri-geometry-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_geometry_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "13f0fc2be0ba44026d056491a9bec9b935cfb68dd5739c0961cadc7ac4ad1c98";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cmake-modules cv-bridge eigen geos roscpp tf ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = "swri_geometry_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
