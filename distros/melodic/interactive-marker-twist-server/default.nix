
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, roscpp, roslaunch, roslint, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-twist-server";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_marker_twist_server-release/archive/release/melodic/interactive_marker_twist_server/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "8597a128559ea347e15b06e235bb1124605e0060f42b3ceebe52769a75563946";
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
