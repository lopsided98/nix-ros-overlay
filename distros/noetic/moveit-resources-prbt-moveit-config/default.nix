
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-support, robot-state-publisher, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-prbt-moveit-config";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_prbt_moveit_config/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "0d77142a1dc3fc0ee9b1bc1a21ca67939ac01345de09d456f0cec0cd36af22b2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-prbt-ikfast-manipulator-plugin moveit-resources-prbt-support robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt Resources for testing: Pilz PRBT 6
    </p>
    <p>
		A project-internal configuration for testing in MoveIt.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
