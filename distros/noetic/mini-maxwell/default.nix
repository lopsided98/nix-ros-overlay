
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, roslib }:
buildRosPackage {
  pname = "ros-noetic-mini-maxwell";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/mini_maxwell/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "190b5ec12efbfd4f07978aea05a65da68cae97d370c7e81eff0f5e41caf56217";
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
