
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro, roscpp, xpp-vis }:
buildRosPackage {
  pname = "ros-lunar-xpp-hyq";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/lunar/xpp_hyq/1.0.10-0.tar.gz;
    sha256 = "0119a3d4c7c58e94933e0e4432dbfd780c04ccbac19b4c08f56638ac61285077";
  };

  buildInputs = [ roscpp xacro xpp-vis ];
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
    #license = lib.licenses.BSD;
  };
}
