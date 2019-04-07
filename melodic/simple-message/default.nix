
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, industrial-msgs, catkin, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-melodic-simple-message";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/simple_message/0.7.0-0.tar.gz;
    sha256 = "5c8e3ff246f5d757272ddf918cd28c6256bfca757437ec78fd606fc68ca53e87";
  };

  buildInputs = [ industrial-msgs roscpp ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ industrial-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''simple_message defines a simple messaging connection and protocol for communicating 
	with an industrial robot controller.  Additional handler and manager classes are 
	included for handling connection limited systems.  This package is part of the ROS-Industrial 
	program.'';
    #license = lib.licenses.BSD;
  };
}
