
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-controller-manager-msgs";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_manager_msgs/0.13.3-0.tar.gz;
    sha256 = "14f1c504b6a28cc2cdce210d42be3f84a9d7f1b7aad39e0c6cb8e959629dc81b";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
