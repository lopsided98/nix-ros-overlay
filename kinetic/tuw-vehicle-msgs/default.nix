
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-vehicle-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_vehicle_msgs/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "2aaae68687edb3f82c4f33536cc3c0ea48d88e5df9232fd51bf7f5c2dccb9da6";
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
