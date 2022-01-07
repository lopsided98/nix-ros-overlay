
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-inorbit-republisher";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/melodic/inorbit_republisher/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "45ff6a390ced0998081cd8e7d11dc43c8d17fbf8d23f78763bfcb6896b6080b9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyyaml roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS to InOrbit topic republisher'';
    license = with lib.licenses; [ mit ];
  };
}
