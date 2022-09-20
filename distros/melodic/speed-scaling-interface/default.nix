
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-speed-scaling-interface";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/melodic/speed_scaling_interface/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "c862c92b1d5c2d4a118c4868a9bd6bf48ff79c4947233770c99a91da3662148f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware interface reading a scalar value from robot hardware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
