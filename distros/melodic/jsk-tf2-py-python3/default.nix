
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy, tf2 }:
buildRosPackage {
  pname = "ros-melodic-jsk-tf2-py-python3";
  version = "0.6.9-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/geometry2_python3-release/archive/release/melodic/jsk_tf2_py_python3/0.6.9-2.tar.gz";
    name = "0.6.9-2.tar.gz";
    sha256 = "b9dcbe07c5e9e519cbb81170f910d4ccc865bee3d180db3862ab4a6fe6398cf6";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg ];
  propagatedBuildInputs = [ python3Packages.rospkg rospy tf2 ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg ];

  meta = {
    description = ''The tf2_py package for python3 compatibility in melodic environment. Supported by ROS community.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
