
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, actionlib, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-fetch-auto-dock-msgs";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_msgs-release/archive/release/melodic/fetch_auto_dock_msgs/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "34f30fe803b0fad0edc3a7983308c34404592920ce11fbdd0d96fd8ea849eb77";
  };

  buildType = "catkin";
  buildInputs = [ actionlib message-generation geometry-msgs actionlib-msgs ];
  propagatedBuildInputs = [ actionlib message-runtime geometry-msgs actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for fetch_auto_dock package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
