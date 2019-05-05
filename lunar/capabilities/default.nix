
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, bondpy, catkin, pythonPackages, rosservice, rostest, message-generation, message-runtime, rospy, std-msgs, roslaunch, nodelet, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-capabilities";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/capabilities-release/archive/release/lunar/capabilities/0.2.0-0.tar.gz;
    sha256 = "b1ec88895ad45d5aa4037585a4be477757956978e9368726d6d996f8c78ff8f9";
  };

  buildInputs = [ std-srvs rostest message-generation rospy std-msgs roslaunch ];
  checkInputs = [ rosservice pythonPackages.coverage pythonPackages.mock pythonPackages.pep8 geometry-msgs ];
  propagatedBuildInputs = [ std-srvs bondpy pythonPackages.pyyaml message-runtime rospy std-msgs roslaunch nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
