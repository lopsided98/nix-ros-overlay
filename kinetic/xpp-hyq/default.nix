
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro, roscpp, xpp-vis }:
buildRosPackage {
  pname = "ros-kinetic-xpp-hyq";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_hyq/1.0.10-0.tar.gz;
    sha256 = "30119d05a64c7be774157c120b51baf2b97c5308a92f933cfac79593dd5a2dfb";
  };

  propagatedBuildInputs = [ roscpp xacro xpp-vis ];
  nativeBuildInputs = [ catkin roscpp xacro xpp-vis ];

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
