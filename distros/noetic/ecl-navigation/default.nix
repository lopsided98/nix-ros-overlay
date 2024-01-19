
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-mobile-robot }:
buildRosPackage {
  pname = "ros-noetic-ecl-navigation";
  version = "0.60.3-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/noetic/ecl_navigation/0.60.3-2.tar.gz";
    name = "0.60.3-2.tar.gz";
    sha256 = "10a7f173506208bbe293df32893d3f5581d6b19a6315f6fac036d91666054aa7";
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
