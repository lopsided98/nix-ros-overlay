
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rospatlite";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/rospatlite/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "26cb5bd321426b71aa3e2f6c1818ee7a029422a6818b9e47bd39896c76cad17d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
