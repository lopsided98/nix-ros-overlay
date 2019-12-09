
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, std-srvs, catkin, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-sbg-driver";
  version = "1.1.7";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/kinetic/sbg_driver/1.1.7-0.tar.gz";
    name = "1.1.7-0.tar.gz";
    sha256 = "6ed1e97b68eef62f702922cbeb80dad354ae1fb1f173884be4b2bb427f8f054b";
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
