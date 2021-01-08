
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmplot, gmplot-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gmplot-ros";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/robustify/gmplot_ros-release/archive/release/kinetic/gmplot_ros/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "0114f91d70b20e5dc6d32a0aa3bb9de3e4c1b9bddefbbc601afca64d1e14e5ce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gmplot gmplot-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for gmplot_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
