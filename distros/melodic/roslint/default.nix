
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-roslint";
  version = "0.11.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslint-release/archive/release/melodic/roslint/0.11.2-0.tar.gz";
    name = "0.11.2-0.tar.gz";
    sha256 = "85588e28bc32d5359340c5524437aa447aadbd15f25c30d9e6cb4030f49232a5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake lint commands for ROS packages.

    The lint commands perform static checking of Python or C++ source
    code for errors and standards compliance.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
