
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rqt-gui, rqt-gui-py, tensorflow-ros }:
buildRosPackage {
  pname = "ros-kinetic-tensorflow-ros-rqt";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/tensorflow_ros_rqt/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "06e6774b09dfe73a4719350c97d50c46b6f6572e7dc1a9416be6cd1cb78c717f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui rqt-gui-py tensorflow-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tensorflow_ros_rqt package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
