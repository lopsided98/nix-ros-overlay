
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-pcl-msgs";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/pcl_msgs-release/archive/release/lunar/pcl_msgs/0.2.0-0.tar.gz;
    sha256 = "c6a04460072f600d051611fc35c4c65a096b3b9c03ccfc7e19b9deaad28c812e";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing PCL (Point Cloud Library)-related ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
