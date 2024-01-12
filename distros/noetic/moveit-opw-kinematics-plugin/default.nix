
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, moveit-resources-fanuc-moveit-config, moveit-ros-planning, opw-kinematics, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-opw-kinematics-plugin";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/JeroenDM/moveit_opw_kinematics_plugin-release/archive/release/noetic/moveit_opw_kinematics_plugin/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "4ea47a42e607c52c82470fb1dff8e901368c18071eeb331592803c9322d20d3f";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions opw-kinematics ];
  checkInputs = [ moveit-resources-fanuc-moveit-config moveit-ros-planning rostest ];
  propagatedBuildInputs = [ moveit-core pluginlib roscpp ];
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
