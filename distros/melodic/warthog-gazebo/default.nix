
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, joint-state-publisher, roscpp, roslaunch, warthog-control, warthog-description }:
buildRosPackage {
  pname = "ros-melodic-warthog-gazebo";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/melodic/warthog_gazebo/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "31abcb4928145948bffd645a6f87394cd1868586d0ad00df4dafa09ba01790f5";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins joint-state-publisher roscpp warthog-control warthog-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Warthog in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
