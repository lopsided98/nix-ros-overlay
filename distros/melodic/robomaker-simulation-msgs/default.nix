
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-robomaker-simulation-msgs";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_simulation_ros_pkgs-release/archive/release/melodic/robomaker_simulation_msgs/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "51c3f5d70c599369c912d428ae4a12cfbc97930e27714f041c58fb0c47449233";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AWS RoboMaker package containing ROS service definitions for service endpoints provided inside of an AWS RoboMaker simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
