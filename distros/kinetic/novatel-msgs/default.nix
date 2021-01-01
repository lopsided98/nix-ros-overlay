
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-novatel-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/novatel_span_driver-release/archive/release/kinetic/novatel_msgs/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "1b107e3d9c71aa6c221aa67ed8ee079610371fa0d91fabdf53ddd7bd9ad91fa0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages which represent raw Novatel SPAN data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
