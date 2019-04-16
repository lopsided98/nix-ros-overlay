
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_description/1.1.0-1.tar.gz;
    sha256 = "c97fd08b20edb4166ab2365e865faae3e374ee8ec56418a9710cd52bd69d3638";
  };

  buildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_description package'';
    #license = lib.licenses.BSD;
  };
}
