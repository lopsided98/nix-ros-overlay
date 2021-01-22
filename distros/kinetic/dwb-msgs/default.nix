
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-2d-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwb-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ef64c1cd775ddf2a54540c6adf85a2ad059f11fe21144713d7a87a67ea47e346";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-2d-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
