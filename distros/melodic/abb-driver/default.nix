
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-robot-client, simple-message }:
buildRosPackage {
  pname = "ros-melodic-abb-driver";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_driver-release/archive/release/melodic/abb_driver/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "a578c118e57d80d4c506097b2a14f750a82a680506f8e7acc1e555db4b5112b9";
  };

  buildType = "catkin";
  buildInputs = [ catkin simple-message ];
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
