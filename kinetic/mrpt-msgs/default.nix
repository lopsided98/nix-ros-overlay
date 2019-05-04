
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-msgs";
  version = "0.1.23";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_msgs-release/archive/release/kinetic/mrpt_msgs/0.1.23-0.tar.gz;
    sha256 = "bb81ec298249129d280a0dcfc7be3ae53beb5322409d74e1db7400b4d01b7cf5";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for MRPT classes and objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
