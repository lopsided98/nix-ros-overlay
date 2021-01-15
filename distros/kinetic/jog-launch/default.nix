
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-joint-launch, jog-controller, nextage-moveit-config, roslaunch, rostest, tra1-moveit-config, ur3-moveit-config, ur5-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-jog-launch";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_launch/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "6be4db38062c350773ac08fa688fbd00f9402b8f98cf6e3812a17f192c6ddd0f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fake-joint-launch jog-controller nextage-moveit-config roslaunch rostest tra1-moveit-config ur3-moveit-config ur5-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of the launch files for jog_controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
