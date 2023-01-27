
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, libyamlcpp, roscpp, rosunit, ur-client-library, ur-robot-driver }:
buildRosPackage {
  pname = "ros-melodic-ur-calibration";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/melodic/ur_calibration/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "80e961a3f9bfa05d6ab2d2414aa5d0ae1a04491d9f3e40aed653249e56864dd6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen libyamlcpp roscpp ur-client-library ur-robot-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF'';
    license = with lib.licenses; [ asl20 ];
  };
}
