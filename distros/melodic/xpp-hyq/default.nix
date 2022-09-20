
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, xacro, xpp-vis }:
buildRosPackage {
  pname = "ros-melodic-xpp-hyq";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_hyq/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "92f200e4ca8f3bb5c9b5e4b9657aadd436267efeae2f74f235a682ad9c3fca62";
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
