
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ouster-driver";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/CPFL/ouster-release/archive/release/melodic/ouster_driver/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "7f68cc7f16bf51c84ddf73d6db82c8352089ee1da21d2e6b1da177ce3697a950";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime pcl-conversions pcl-ros roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OS1 ROS client'';
    license = with lib.licenses; [ asl20 ];
  };
}
