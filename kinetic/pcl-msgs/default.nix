
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-pcl-msgs";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pcl_msgs-release/archive/release/kinetic/pcl_msgs/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "9deb989fefcdb712061679ffffc0a3d03e46ec54807c6072703698eca9c18000";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing PCL (Point Cloud Library)-related ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
