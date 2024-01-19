
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diffbot-control, diffbot-description, gazebo-plugins, gazebo-ros, gazebo-ros-control, xacro }:
buildRosPackage {
  pname = "ros-noetic-diffbot-gazebo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_gazebo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "95278be8b2a56029fc0fa84e5bb39f8047a0ee7ef7f7776a5db585fdbec844ad";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diffbot-control diffbot-description gazebo-plugins gazebo-ros gazebo-ros-control xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_gazebo package'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
