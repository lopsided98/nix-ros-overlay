
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, xacro, xpp-vis }:
buildRosPackage {
  pname = "ros-noetic-xpp-hyq";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/noetic/xpp_hyq/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "b62b282e59bc70fb9fde91beb6451de651efdb0012083c065ede1693d0aebcdb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp xacro xpp-vis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''HyQ-robot specific functions for visualization in the  XPP Motion Framework.
    
    These include inverse kinematics as well as urdf files for a one-legged,
    two-legged and four legged robot with <a href="http://dls.iit.it/">HyQ</a>
    legs.
        
    The dynamic model can be found 
    <a href="https://github.com/iit-DLSLab/hyq-description">here</a>.  
    
    See also <a href="https://dls.iit.it">IIT</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
