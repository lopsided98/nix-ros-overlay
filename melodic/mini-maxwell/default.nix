
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, cmake-modules, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-mini-maxwell";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/mini_maxwell/2.1.13-1.tar.gz;
    sha256 = "41f120f3219017d91224594140bf4680584f6a9efdff8aaba4e170ed62202649";
  };

  buildInputs = [ roslib cmake-modules dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mini_maxwell'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
