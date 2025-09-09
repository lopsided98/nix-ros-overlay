
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gtest, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-ddynamic-reconfigure";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure/archive/release/noetic/ddynamic_reconfigure/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "17575c3fd870dae718885e9aa9efc894d34bac13878940c0f006f529020a1ba7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The ddynamic_reconfigure package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
