
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, cmake-modules, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-mini-maxwell";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/mini_maxwell/2.1.12-1.tar.gz;
    sha256 = "2c3c6f7ebd252a7ed8a2fa66f97ad044290fac41cf0cc1f037831bbac1de3c8d";
  };

  buildInputs = [ roslib cmake-modules dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mini_maxwell'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
