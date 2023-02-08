
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-asr-msgs";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "asr-ros";
        repo = "asr_msgs-release";
        rev = "release/melodic/asr_msgs/1.0.0-1";
        sha256 = "sha256-D028UaK630H8PEnRQs3Cilp1LxEemIF7ai1NTdfij3g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
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
