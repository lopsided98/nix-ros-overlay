
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, moveit-resources, moveit-ros-planning, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-moveit-opw-kinematics-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/JeroenDM/moveit_opw_kinematics_plugin-release/archive/release/kinetic/moveit_opw_kinematics_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "dd903218c7b494841533ca25ff0ea9d4fca492923644630a70b9d3816f2d4eae";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt kinematics plugin for industrial robots.
    </p>
    <p>
      This plugin uses an analytical inverse kinematic library, opw_kinematics,
      to calculate the inverse kinematics for industrial robots with 6 degrees of freedom,
      two parallel joints, and a spherical wrist.
    </p>'';
    license = with lib.licenses; [ asl20 ];
  };
}
