
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dual-quaternions, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-dual-quaternions-ros";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions_ros-release/archive/release/melodic/dual_quaternions_ros/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "66a4e3cebb3779e92bd153e90a2dc8b3bdc93e9276faebc39e46812390ffa21b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dual-quaternions geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs from and to dual quaternions'';
    license = with lib.licenses; [ mit ];
  };
}
