
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-automotive-navigation-msgs";
  version = "2.0.3";

  src = fetchurl {
    url = https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/lunar/automotive_navigation_msgs/2.0.3-0.tar.gz;
    sha256 = "b12f467a21d1297ff49948dfb5d4dab4d92566b0e9cad2197c50a9df9c4b8559";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Messages for Navigation Objectives in Automotive Automation Software'';
    #license = lib.licenses.MIT;
  };
}
