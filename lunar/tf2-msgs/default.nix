
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, actionlib-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf2-msgs";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_msgs/0.5.20-0.tar.gz;
    sha256 = "e015758368c4544979238c3f67d4b67a7143b97e8fc1264fd530a70e7991c4db";
  };

  buildInputs = [ message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-generation actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
