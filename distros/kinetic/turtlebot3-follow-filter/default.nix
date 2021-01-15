
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-filters }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-follow-filter";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/kinetic/turtlebot3_follow_filter/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "ce62eb812b2be6e80f1e9d6344fef016d5a5d8cc1a6536fe0640f58426b57420";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot3_follow_filter package using laser_filters for turtlebot3_follower package'';
    license = with lib.licenses; [ asl20 ];
  };
}
