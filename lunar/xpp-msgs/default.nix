
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-xpp-msgs";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/lunar/xpp_msgs/1.0.10-0.tar.gz;
    sha256 = "ae40e307179cacb6a0952a14588c6c39cb6dbbcc65d018b4c48fbd5d612767c1";
  };

  buildInputs = [ sensor-msgs message-generation message-runtime std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-generation message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages used in the XPP framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
