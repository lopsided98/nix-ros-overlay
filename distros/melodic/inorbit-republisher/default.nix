
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-inorbit-republisher";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/melodic/inorbit_republisher/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "018b3ac2250983f171e4b6f577e9a40ee1b8c56c8e7ffc33df8ae3a05ce603f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.pyyaml pythonPackages.rospkg roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS to InOrbit topic republisher'';
    license = with lib.licenses; [ mit ];
  };
}
