
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-vehicle-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_vehicle_msgs/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "47c7c12836c59f936116f877d105cdf3399455996e434fdb75c72fe958b94c4a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rospy std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_vehicle_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
