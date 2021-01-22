
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cob-control-msgs, cob-frame-tracker, cob-script-server, cob-srvs, dynamic-reconfigure, eigen, eigen-conversions, geometry-msgs, kdl-conversions, kdl-parser, nav-msgs, orocos-kdl, pluginlib, pythonPackages, robot-state-publisher, roscpp, roslint, rospy, rviz, sensor-msgs, std-msgs, tf, tf-conversions, topic-tools, trajectory-msgs, urdf, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-twist-controller";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_twist_controller/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "9cd1e19b2f7d9c67efa44454b75ae755f07aa790095002d04975cc82256a2687";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ boost cmake-modules cob-control-msgs cob-frame-tracker cob-script-server cob-srvs dynamic-reconfigure eigen eigen-conversions geometry-msgs kdl-conversions kdl-parser nav-msgs orocos-kdl pluginlib pythonPackages.matplotlib pythonPackages.six robot-state-publisher roscpp rospy rviz sensor-msgs std-msgs tf tf-conversions topic-tools trajectory-msgs urdf visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The main purpose of the cob_twist_controller is to convert target twists into joint velocities. 
  Therefore it makes use of several implemented inverse kinematics approaches at the first order differential level. 
  The inverse differential kinematics solver considers kinematic chain extensions, singularity robustness, 
  redundancy resolution and priority-based methods.
  To avoid hardware destruction there is a limiter interface active as well. 
  Via parameter server users can dynamically configure the solving strategy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
