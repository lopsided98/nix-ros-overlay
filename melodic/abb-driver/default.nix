
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, industrial-robot-client, catkin }:
buildRosPackage {
  pname = "ros-melodic-abb-driver";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/melodic/abb_driver/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "268b1f5209eabcce2975ccf482c6673fccaea7fb25f491927a4001bc1263e75f";
  };

  buildType = "catkin";
  buildInputs = [ industrial-robot-client ];
  propagatedBuildInputs = [ industrial-robot-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     ROS-Industrial nodes for interfacing with ABB robot controllers.
   </p>
   <p>
     This package is part of the ROS-Industrial program and contains nodes 
     for interfacing with ABB industrial robot controllers.
   </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
