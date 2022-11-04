
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-abb-egm-msgs";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_robot_driver_interfaces-release/archive/release/melodic/abb_egm_msgs/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "0193c267d74b75267b6eb5259506506b8ff2d98187946e41bccb06416a391ee5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS message definitions, representing Externally Guided Motion (EGM) data from ABB robot controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
