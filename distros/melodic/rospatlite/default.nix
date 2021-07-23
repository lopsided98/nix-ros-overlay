
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rospatlite";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/rospatlite/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "5e01ad253087b8dab1501f343d49c26e26797a75ae2f748592331032935534f0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
