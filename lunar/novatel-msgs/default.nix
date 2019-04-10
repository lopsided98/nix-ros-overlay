
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-novatel-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/novatel_span_driver-release/archive/release/lunar/novatel_msgs/1.1.0-0.tar.gz;
    sha256 = "5f083909e67394e8ab11a0b11a8b67bded0903d634c5a7af4dbbfdc1cf7470e0";
  };

  buildInputs = [ std-msgs message-generation nav-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs nav-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages which represent raw Novatel SPAN data.'';
    #license = lib.licenses.BSD;
  };
}
