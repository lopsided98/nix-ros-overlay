
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap, eigen }:
buildRosPackage {
  pname = "ros-kinetic-fcl-catkin";
  version = "0.5.96";

  src = fetchurl {
    url = https://github.com/wxmerkt/fcl_catkin-release/archive/release/kinetic/fcl_catkin/0.5.96-0.tar.gz;
    sha256 = "22698e7ed5b2a0b8ca1f674b1d050ee7eaac1a07438faba31e4f2dc46e344b8b";
  };

  buildInputs = [ octomap eigen ];
  propagatedBuildInputs = [ octomap eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fcl_catkin'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
