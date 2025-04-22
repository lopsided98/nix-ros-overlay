
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-resources, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-irb1600-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_irb1600_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "ff1da3591bac5aa59ade9d5ebe1e5883bbff28df87943e81ff9ae5022964a335";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver abb-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB IRB 1600 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 1600 manipulators. This package includes the 6kg 1.2m
      and the 8kg and 10kg 1.45m versions.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in
      <em>ABB Product specification - IRB 1600/1660ID</em>, document ID:
      <em>3HAC023604-001, Rev AQ</em>.
      All URDFs / XACROs are based on the default motion and joint velocity
      limits, unless noted otherwise (ie: no support for high speed joints,
      extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}
