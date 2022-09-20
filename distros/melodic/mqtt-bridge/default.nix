
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosbridge-library, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mqtt-bridge";
  version = "0.1.8-r4";

  src = fetchurl {
    url = "https://github.com/groove-x/mqtt_bridge-release/archive/release/melodic/mqtt_bridge/0.1.8-4.tar.gz";
    name = "0.1.8-4.tar.gz";
    sha256 = "b6ee5c7ab85fd71dd76c4b8a59e74f17b12a6d593eff387183dc4d0d7e58dd4e";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.pip pythonPackages.setuptools ];
  propagatedBuildInputs = [ rosbridge-library rospy std-msgs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''The mqtt_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
