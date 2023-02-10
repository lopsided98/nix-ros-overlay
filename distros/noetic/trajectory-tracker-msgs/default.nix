
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-trajectory-tracker-msgs";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/noetic/trajectory_tracker_msgs/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "af1dfa3abee3b579ef71e2094ff455358addce0e19506e9e7ce671c34ce7a49c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ nav-msgs roscpp roslint rosunit ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for trajectory_tracker package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
