
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, franka-control, franka-gripper, catkin, franka-hw, franka-description, franka-msgs, franka-visualization, panda-moveit-config, franka-example-controllers }:
buildRosPackage {
  pname = "ros-kinetic-franka-ros";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_ros/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "cbb14fbd21fa715844e4219c98cb539d925ac1ccd1d3122e283c12b0a88461a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-gripper franka-control franka-hw franka-description franka-msgs franka-visualization panda-moveit-config franka-example-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_ros is a metapackage for all Franka Emika ROS packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
