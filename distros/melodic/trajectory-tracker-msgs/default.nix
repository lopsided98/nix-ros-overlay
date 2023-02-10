
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-trajectory-tracker-msgs";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/trajectory_tracker_msgs/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "ae82797adaa22473bfaa99dc8d648c9dc85f36c045e7234d82f1995decc18a64";
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
