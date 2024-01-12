
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, pal-statistics-msgs, python3Packages, rosbag, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-pal-statistics";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/noetic/pal_statistics/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "4251cc22f9021178d7895e02bf84bd3d5b59d39f635c57b8d4e21fcf6a7df532";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ boost pal-statistics-msgs python3Packages.future rosbag roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pal_statistics package'';
    license = with lib.licenses; [ mit ];
  };
}
