
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pcl-msgs";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/pcl_msgs-release/archive/release/melodic/pcl_msgs/0.2.0-0.tar.gz;
    sha256 = "e4d2bd132c08b705e38958c8fd8203311af0feefdaa2a3aeeac86cb54e4b6d2b";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing PCL (Point Cloud Library)-related ROS messages.'';
    #license = lib.licenses.BSD;
  };
}
