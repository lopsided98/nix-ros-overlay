
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, roscpp, roslaunch, roslint, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-interactive-marker-twist-server";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_marker_twist_server-release/archive/release/noetic/interactive_marker_twist_server/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "95ce1531e7067a10fec566d21738937772b436ac55729e2bfa04acac98c5479d";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ interactive-markers roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interactive control for generic Twist-based robots using interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
