
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_msgs/1.0.0-1.tar.gz;
    sha256 = "c14dec48c1306792d18490e5b388a4199656e1c434d8fa7f3ea7e22a3e306a5c";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service definitions for the ROSflight ROS stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
