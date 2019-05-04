
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-description";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_description/1.1.1-1.tar.gz;
    sha256 = "b6306c70cba3e8d0c9035f2fcbb4c157713b0d9644cdad7c996d4b93eece5c8a";
  };

  buildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
