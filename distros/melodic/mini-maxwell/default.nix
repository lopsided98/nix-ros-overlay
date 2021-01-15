
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, roslib }:
buildRosPackage {
  pname = "ros-melodic-mini-maxwell";
  version = "2.1.21-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/mini_maxwell/2.1.21-3.tar.gz";
    name = "2.1.21-3.tar.gz";
    sha256 = "3f10e85ae3f503134406c164c21939cf74588f6f38687ceb96d0f835085f8701";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules roslib ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mini_maxwell'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
