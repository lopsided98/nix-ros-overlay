
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-control, franka-description, franka-example-controllers, franka-gazebo, franka-gripper, franka-hw, franka-msgs, franka-visualization }:
buildRosPackage {
  pname = "ros-melodic-franka-ros";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_ros/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "1172fb29df89a991296eb32276e852bc2282ceb17125cbf9c6e080ac1232d837";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-control franka-description franka-example-controllers franka-gazebo franka-gripper franka-hw franka-msgs franka-visualization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_ros is a metapackage for all Franka Emika ROS packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
