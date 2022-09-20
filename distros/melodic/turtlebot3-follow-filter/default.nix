
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-filters }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-follow-filter";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_follow_filter/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "a97a63ec2370bbc67e7270c6aa1d5efca85134228642ac263e9a6d2ccef39f45";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot3_follow_filter package using laser_filters for turtlebot3_follower package'';
    license = with lib.licenses; [ asl20 ];
  };
}
