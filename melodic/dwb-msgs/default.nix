
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, catkin, nav-2d-msgs, message-generation, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-dwb-msgs";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_msgs/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "6427389e006d1d0e35080e805cf583355d40ad500fa4bcd8d365406e52fe41f3";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs message-generation nav-msgs nav-2d-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs nav-msgs nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
