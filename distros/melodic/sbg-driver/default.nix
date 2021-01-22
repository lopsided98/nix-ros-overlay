
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-sbg-driver";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/melodic/sbg_driver/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "e4993f0efb6ad38028d9c4d521e40a631f6c66b844a91188790803620f59ac3c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The SBG ROS Driver package'';
    license = with lib.licenses; [ mit ];
  };
}
