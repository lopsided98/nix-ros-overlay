
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-irb1200-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_irb1200_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "02839d4dc3e844cb4f0740159691a5577eca8cf213a9b348efb47c56b8c6b422";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB IRB 1200 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 1200 manipulators. This currently includes the IRB 1200-5/0.9
      and the IRB 1200-7/0.7 variants.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <em>ABB IRB 1200 Datasheet</em>, document ID: <em>ROB0275EN_A, Sept 2016</em>.
      All urdfs / xacros are based on the default motion and joint velocity
      limits, unless noted otherwise (ie: no support for high speed joints,
      extended / limited motion ranges or other options).
    </p>
    <p>
      Note 1: inertial and dynamics values for the 5/0.9 variant were calculated
      from the meshes using <em>Meshlab</em>, assuming constant density.
      As the datasheet only provides the mass of the entire robot,
      the mass of each link was estimated based on its volume, assuming
      constant density for the entire robot.
    </p>
    <p>
      Note 2: maximum joint effort values for the 5/0.9 variant do not
      correspond to real world limits of the robot. The current values were
      chosen to accomodate Gazebo simulations of this specific variant but
      are fictional values.
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}
