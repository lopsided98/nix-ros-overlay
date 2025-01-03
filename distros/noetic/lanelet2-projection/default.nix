
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-projection";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_projection/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "ce99f8dbfe4f31abbedada6eeae09d14a2e7bcbe220c47004a8036e7d3fef274";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ geographiclib lanelet2-io mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = "Lanelet2 projection library for lat/lon to local x/y conversion";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
