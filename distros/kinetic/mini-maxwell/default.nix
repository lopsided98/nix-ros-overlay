
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, roslib }:
buildRosPackage {
  pname = "ros-kinetic-mini-maxwell";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/mini_maxwell/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "cbe0f75df880a5195109273e778419a8c533656fa94cb6814e39a7ba89f0fce9";
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
