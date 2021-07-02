
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-msgs, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-simple-message";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/simple_message/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "bdc441b65f17935ed7da0dc2690ae4b0654e5169c2109f3cebf1c076eaf49f8c";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ industrial-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''simple_message defines a simple messaging connection and protocol for communicating 
	with an industrial robot controller.  Additional handler and manager classes are 
	included for handling connection limited systems.  This package is part of the ROS-Industrial 
	program.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
