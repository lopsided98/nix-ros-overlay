
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-asr-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/asr-ros/asr_msgs-release/archive/release/kinetic/asr_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9d642a047f0513c53c7ce0f5249df84251d313f89f3e81b9abe02aa250429e59";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains all messages that are particular to our Active Scene Recognition - Framework at 
		Humanoids and Intelligence Systems Lab (HIS), Karlsruhe Institute of Technology (KIT).
	  These messages make up the interfaces between the different collaborating components of this system.
	  They are of critical importance and structured by the ROS communication capabilities.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
