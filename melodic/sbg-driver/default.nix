
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, std-srvs, catkin, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-sbg-driver";
  version = "1.1.7";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/melodic/sbg_driver/1.1.7-0.tar.gz";
    name = "1.1.7-0.tar.gz";
    sha256 = "5dcd118009e8bd76fefe8a9abe3467f6ade59058b8ddcc4b386466c8a419be65";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs std-srvs roscpp message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs std-srvs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The SBG ROS Driver package'';
    license = with lib.licenses; [ mit ];
  };
}
