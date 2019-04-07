
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tra1-moveit-config, nextage-moveit-config, catkin, rostest, ur3-moveit-config, jog-controller, roslaunch, ur5-moveit-config, fake-joint-launch }:
buildRosPackage {
  pname = "ros-kinetic-jog-launch";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_launch/0.0.1-0.tar.gz;
    sha256 = "9e31871420cdcebc80a7f2420ff4af66f95ad1eed40d7df222837b18eae1ffd7";
  };

  buildInputs = [ rostest roslaunch jog-controller fake-joint-launch ];
  propagatedBuildInputs = [ rostest tra1-moveit-config nextage-moveit-config ur3-moveit-config jog-controller roslaunch ur5-moveit-config fake-joint-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of the launch files for jog_controller'';
    #license = lib.licenses.Apache License 2.0;
  };
}
