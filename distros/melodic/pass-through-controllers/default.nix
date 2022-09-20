
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, cartesian-control-msgs, cartesian-interface, cartesian-trajectory-controller, catkin, control-msgs, controller-interface, controller-manager, controller-manager-msgs, dynamic-reconfigure, geometry-msgs, hardware-interface, roscpp, rostest, speed-scaling-interface, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-pass-through-controllers";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_passthrough_controllers-release/archive/release/melodic/pass_through_controllers/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1e0d15cfe95e465317a70c03241a729dee9eb7eee7c737e156754a711f2d0959";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ actionlib actionlib-msgs cartesian-trajectory-controller control-msgs controller-manager-msgs rostest xacro ];
  propagatedBuildInputs = [ actionlib cartesian-control-msgs cartesian-interface controller-interface controller-manager dynamic-reconfigure geometry-msgs hardware-interface roscpp speed-scaling-interface trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory controllers (joint-based and Cartesian) that forward trajectories
    directly to a robot controller and let it handle trajectory interpolation and execution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
