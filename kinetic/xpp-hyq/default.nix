
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, xpp-vis }:
buildRosPackage {
  pname = "ros-kinetic-xpp-hyq";
  version = "1.0.8";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_hyq/1.0.8-0.tar.gz;
    sha256 = "3370a9f8578aecb1eeb7cee71343b7c6be8289bb2527533ad041af041c227f9e";
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
