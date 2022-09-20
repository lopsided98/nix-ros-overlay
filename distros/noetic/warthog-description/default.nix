
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-warthog-description";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/noetic/warthog_description/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "0a96a612f1fd8bfbae68dc7f0af5e83c51376a70fbca626f843e263edff53b6b";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
