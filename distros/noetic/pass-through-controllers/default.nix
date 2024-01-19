
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, cartesian-control-msgs, cartesian-interface, cartesian-trajectory-controller, catkin, control-msgs, controller-interface, controller-manager, controller-manager-msgs, dynamic-reconfigure, geometry-msgs, hardware-interface, roscpp, rostest, speed-scaling-interface, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-pass-through-controllers";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_passthrough_controllers-release/archive/release/noetic/pass_through_controllers/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "834c1e9209fde4334698a94439895dcc9656191010add47169c3a89f5be56cb8";
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
