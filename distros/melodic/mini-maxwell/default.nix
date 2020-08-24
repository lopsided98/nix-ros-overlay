
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, roslib }:
buildRosPackage {
  pname = "ros-melodic-mini-maxwell";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/mini_maxwell/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "61dfafaccfdeb1b1c81cf003244aef8f76ad9970a23747ca31d9a56008d1c2e6";
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
