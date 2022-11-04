
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-mobile-robot }:
buildRosPackage {
  pname = "ros-melodic-ecl-navigation";
  version = "0.60.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/melodic/ecl_navigation/0.60.3-0.tar.gz";
    name = "0.60.3-0.tar.gz";
    sha256 = "1d3e834b6aa0b70617f25fc03c9c7f275e5280ed6a75570483b0db48ecd5b32d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-mobile-robot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack aims to bring the common tools and algorithms needed to
    develop navigation algorithms, in particular slam. It does not focus on
    the end-point solution, rather the tools needed to create a variety of
    end-point solutions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
