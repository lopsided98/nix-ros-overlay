
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, scaled-joint-trajectory-controller, speed-scaling-interface, speed-scaling-state-controller }:
buildRosPackage {
  pname = "ros-melodic-scaled-controllers";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/melodic/scaled_controllers/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "326bb647af2998e8552761864179e37433d7b8902b36fbbb3232d1e7e452ac8d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ scaled-joint-trajectory-controller speed-scaling-interface speed-scaling-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''scaled controllers metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
