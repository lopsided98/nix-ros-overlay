
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, denso-launch, denso-ros-control, vs060, vs060-gazebo, vs060-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-denso";
  version = "2.0.3";

  src = fetchurl {
    url = "https://github.com/start-jsk/denso-release/archive/release/kinetic/denso/2.0.3-0.tar.gz";
    name = "2.0.3-0.tar.gz";
    sha256 = "3a0ed398c1dda0c12c2740b2e2227555a3ebceb8766d43b24ff95388a98aa4c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ denso-launch denso-ros-control vs060 vs060-gazebo vs060-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Packages in the denso suite provide controller functionality for Denso's industrial manipulators. </p>
   <p><a href="http://goo.gl/kL0vnf">ORiN</a> (Open Robot interface for the Network) is a unified network interface for industrial robot applications and has been stably utilized in Denso's manipulators for years. Controllers in this package suite uses b-CAP, UDP-based control protocol defined in ORiN. It also has mechanism to detect faulty commands. Using b-CAP, ROS communicates to the embedded controller computer that has been achieving industry-proven reliability. The computer also has mechanism to detect faulty commands. That said as a whole the system maintains the same level of safeness with their commercial product setting.</p>
   <p>Also, as a genuine ROS package, it enables robot application developers to access full ROS features. MoveIt! configuration package is also included for some of Denso's robots.</p>
   <p>Core functionality </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
