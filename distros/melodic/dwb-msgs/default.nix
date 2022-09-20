
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-2d-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-dwb-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "5769cd1bf4f0ba369d9884e9d698f1170f993c68acd5bc97f37b20411ea9a2f7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-2d-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
