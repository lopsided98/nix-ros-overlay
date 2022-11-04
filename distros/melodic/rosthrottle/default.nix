
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-rosthrottle";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/UTNuclearRoboticsPublic/rosthrottle-release/archive/release/melodic/rosthrottle/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "b4f4384cb8098eb9adc8e27e784f30df9059b7cb9709fa6fe75cb17ddc65011c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Python package for throttling ROS topics programatically in Python. Sits on top of the 
        ros_comm topic_tools throttle utility.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
