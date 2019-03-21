
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_gazebo/0.6.10-0.tar.gz;
    sha256 = "01370590968c883e1812e7ffd517c5ff186dfd17d1eb1e33f509d55caf416283";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo package'';
    #license = lib.licenses.Apache-2.0;
  };
}
