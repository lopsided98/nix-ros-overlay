
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-humanoid-nav-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/humanoid_msgs-release/archive/release/kinetic/humanoid_nav_msgs/0.3.0-0.tar.gz;
    sha256 = "80f6163d1ad0170811809fff118132f99cc4ac39af51339f51f5c3d66490289b";
  };

  buildInputs = [ std-msgs message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and services for humanoid robot navigation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
