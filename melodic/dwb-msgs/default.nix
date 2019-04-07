
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, nav-msgs, message-runtime, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dwb-msgs";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_msgs/0.2.5-1.tar.gz;
    sha256 = "6427389e006d1d0e35080e805cf583355d40ad500fa4bcd8d365406e52fe41f3";
  };

  buildInputs = [ nav-msgs message-generation nav-2d-msgs geometry-msgs ];
  propagatedBuildInputs = [ nav-msgs message-runtime geometry-msgs nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_local_planner'';
    #license = lib.licenses.BSD;
  };
}
