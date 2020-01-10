
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-sbg-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/melodic/sbg_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "91fb4d9ecba6108f18023bda25c736a8ebf73dbf44588db2a2bdbb5462cbb129";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The SBG ROS Driver package'';
    license = with lib.licenses; [ mit ];
  };
}
