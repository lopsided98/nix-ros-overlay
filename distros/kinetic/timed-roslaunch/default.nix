
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rospy }:
buildRosPackage {
  pname = "ros-kinetic-timed-roslaunch";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/MoriKen254/timed_roslaunch-release/archive/release/kinetic/timed_roslaunch/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "dd527b9ff43c85a1b9de8d8cb974fdfcdf032acf66fa889c59c156053cf6e395";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Script to delay the launch of a roslaunch file'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
