
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, roscpp, roslaunch, roslint, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-twist-server";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_marker_twist_server-release/archive/release/melodic/interactive_marker_twist_server/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "6ccbf6ca0203b06b71bec241bdb61dbb76d05fab9e7977d61c758d5189c3df9f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ interactive-markers roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interactive control for generic Twist-based robots using interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
