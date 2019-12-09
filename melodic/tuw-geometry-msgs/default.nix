
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, rospy, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-melodic-tuw-geometry-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_geometry_msgs/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "423e031652dcf0357d6e857d9a40e120bd249816739ca42785c2961006ddfbce";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs rospy roscpp message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_geometry_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
