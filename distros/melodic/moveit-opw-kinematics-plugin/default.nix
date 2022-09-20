
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, moveit-resources, moveit-ros-planning, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-moveit-opw-kinematics-plugin";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/JeroenDM/moveit_opw_kinematics_plugin-release/archive/release/melodic/moveit_opw_kinematics_plugin/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "be8f4501932be19f3ca9c59fa427b4a40188a1cd7b4e541c598f2ba4e791e786";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions ];
  checkInputs = [ moveit-resources moveit-ros-planning rostest ];
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
