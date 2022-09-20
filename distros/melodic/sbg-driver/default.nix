
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-sbg-driver";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/melodic/sbg_driver/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "d9eacffb9bd5b9b0807ad482598c36932f04ca9b8313bc1714c140a6c5a02d7b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver package for communication with the SBG navigation systems.'';
    license = with lib.licenses; [ mit ];
  };
}
