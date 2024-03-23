
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marine-sensor-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/CCOMJHC/marine_msgs-release/archive/release/noetic/marine_sensor_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "d4c984439b7520c0203dca46e4d4695771bf57f0bcfa8bac2db919740bb658c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The marine_sensor_msgs package, meant to contain messages for common
  underwater sensors (e.g., conductivity, turbidity, dissolved oxygen)";
    license = with lib.licenses; [ bsd3 ];
  };
}
