
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, roscpp, interactive-markers, roslaunch, visualization-msgs }:
buildRosPackage {
  pname = "ros-lunar-interactive-marker-twist-server";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/interactive_marker_twist_server-release/archive/release/lunar/interactive_marker_twist_server/1.2.0-0.tar.gz;
    sha256 = "858ba92c40fc86e1fca4699a46ad339c16cb472fd38440dbc795042b14ef3487";
  };

  buildInputs = [ visualization-msgs interactive-markers roscpp ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ visualization-msgs interactive-markers roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interactive control for generic Twist-based robots using interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
