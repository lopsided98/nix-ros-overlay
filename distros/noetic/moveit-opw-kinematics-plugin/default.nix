
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, moveit-resources-fanuc-moveit-config, moveit-ros-planning, opw-kinematics, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-opw-kinematics-plugin";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/JeroenDM/moveit_opw_kinematics_plugin-release/archive/release/noetic/moveit_opw_kinematics_plugin/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "c1222455493b3d0d601d777ea264e4ef6b5f9ee6b3c6ad330eb2fa871ae54fbf";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions opw-kinematics ];
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
