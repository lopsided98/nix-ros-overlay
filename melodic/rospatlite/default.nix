
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rospy, catkin }:
buildRosPackage {
  pname = "ros-melodic-rospatlite";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/rospatlite/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "d145440fa3f2a46fbcbe01d3b752bab591ec48822a834acfc113c590c979700e";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs rospy ];
  propagatedBuildInputs = [ std-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
