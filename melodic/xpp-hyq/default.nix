
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, xpp-vis }:
buildRosPackage {
  pname = "ros-melodic-xpp-hyq";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_hyq/1.0.9-0.tar.gz;
    sha256 = "926fef74e45d3606fae7f4802cab03a73b49c3372e4fa9e71880366c15f429e4";
  };

  propagatedBuildInputs = [ roscpp xpp-vis ];
  nativeBuildInputs = [ catkin roscpp xpp-vis ];

  meta = {
    description = ''HyQ-robot specific functions for visualization in the  XPP Motion Framework.
    
    These include inverse kinematics as well as urdf files for a one-legged,
    two-legged and four legged robot with <a href="http://dls.iit.it/">HyQ</a>
    legs.
        
    The dynamic model can be found 
    <a href="https://github.com/iit-DLSLab/hyq-description">here</a>.  
    
    See also <a href="https://dls.iit.it">IIT</a>.'';
    #license = lib.licenses.BSD;
  };
}
