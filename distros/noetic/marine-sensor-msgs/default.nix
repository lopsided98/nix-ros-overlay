
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marine-sensor-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/CCOMJHC/marine_msgs-release/archive/release/noetic/marine_sensor_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "2c391fb403d10aa7e749e6ee3a050e378248bf4b96a4302913a8154327a9a415";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The marine_sensor_msgs package, meant to contain messages for common
  underwater sensors (e.g., conductivity, turbidity, dissolved oxygen)'';
    license = with lib.licenses; [ bsd3 ];
  };
}
