
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tra1-moveit-config, nextage-moveit-config, catkin, rostest, ur3-moveit-config, jog-controller, roslaunch, ur5-moveit-config, fake-joint-launch }:
buildRosPackage {
  pname = "ros-kinetic-jog-launch";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_launch/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "6be4db38062c350773ac08fa688fbd00f9402b8f98cf6e3812a17f192c6ddd0f";
  };

  buildType = "catkin";
  buildInputs = [ rostest roslaunch jog-controller fake-joint-launch ];
  propagatedBuildInputs = [ tra1-moveit-config nextage-moveit-config rostest ur3-moveit-config jog-controller roslaunch ur5-moveit-config fake-joint-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of the launch files for jog_controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
