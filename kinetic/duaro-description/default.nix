
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-duaro-description";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/duaro_description/1.0.0-0.tar.gz;
    sha256 = "fb821d84f942afc71cc43d9470c86cde1f9add66ee4e80d6d10f93ccc11da3b1";
  };

  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The duaro_description package'';
    #license = lib.licenses.BSD;
  };
}
