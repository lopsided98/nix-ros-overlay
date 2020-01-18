
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2 }:
buildRosPackage {
  pname = "ros-melodic-tf2-py";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_py/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "949ec60f60bd8d454949978aa90e7358e18c5e89d4c5ba297162734f051097dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tf2_py package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
