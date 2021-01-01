
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-mobile-robot }:
buildRosPackage {
  pname = "ros-kinetic-ecl-navigation";
  version = "0.60.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/kinetic/ecl_navigation/0.60.3-0.tar.gz";
    name = "0.60.3-0.tar.gz";
    sha256 = "f891037ee8353a0aaf8e91f6db00a8a5c26213977901b7ec5d0752eae1e8b22c";
  };

  buildType = "catkin";
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
