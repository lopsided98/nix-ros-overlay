
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sbg-driver";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/kinetic/sbg_driver/1.1.7-0.tar.gz;
    sha256 = "6ed1e97b68eef62f702922cbeb80dad354ae1fb1f173884be4b2bb427f8f054b";
  };

  buildInputs = [ std-srvs sensor-msgs message-generation std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs sensor-msgs message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The SBG ROS Driver package'';
    license = with lib.licenses; [ mit ];
  };
}
