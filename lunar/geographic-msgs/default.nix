
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuid-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-geographic-msgs";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/geographic_info-release/archive/release/lunar/geographic_msgs/0.5.2-0.tar.gz;
    sha256 = "46b6413a350233f4110e7b2d1be5906881bb8fcd74dbe9bcebdaa748e73d58a7";
  };

  buildInputs = [ uuid-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs uuid-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    #license = lib.licenses.BSD;
  };
}
