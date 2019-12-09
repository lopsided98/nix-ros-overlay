
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, std-msgs, catkin, pcl-conversions, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-ouster-driver";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/CPFL/ouster-release/archive/release/melodic/ouster_driver/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "7f68cc7f16bf51c84ddf73d6db82c8352089ee1da21d2e6b1da177ce3697a950";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs std-msgs pcl-conversions roscpp message-generation ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs std-msgs pcl-conversions roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OS1 ROS client'';
    license = with lib.licenses; [ asl20 ];
  };
}
