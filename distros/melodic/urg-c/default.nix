
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-urg-c";
  version = "1.0.405";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_c-release/archive/release/melodic/urg_c/1.0.405-0.tar.gz";
    name = "1.0.405-0.tar.gz";
    sha256 = "f747da6d3ab437c8a455194bbd9cf64f84798700d7458584c77916f9c479691a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
