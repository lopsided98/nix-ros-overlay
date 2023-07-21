
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-chaplus-ros";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/chaplus_ros/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "9986ff801a3c0f08f29148e7c4476bd3c54386d88212e9b370598872053ef5a8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.requests rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for chaplus service'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
