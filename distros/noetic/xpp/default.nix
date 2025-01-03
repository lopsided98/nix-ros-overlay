
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xpp-examples, xpp-hyq, xpp-msgs, xpp-quadrotor, xpp-states, xpp-vis }:
buildRosPackage {
  pname = "ros-noetic-xpp";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/noetic/xpp/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "f7501d7db91d3ceabafed99e6f47332c578efd2bc2575cfa000bf3991a1235c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xpp-examples xpp-hyq xpp-msgs xpp-quadrotor xpp-states xpp-vis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Visualization of motion-plans for legged robots. It draws support areas, 
    contact forces and motion trajectories in RVIZ and displays URDFs for 
    specific robots, including a one-legged, a two-legged hopper and
    <a href=\"http://dls.iit.it/\">HyQ</a>. 
    Example motions were generated by
    <a href=\"https://github.com/ethz-adrl/towr\">towr</a>.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
