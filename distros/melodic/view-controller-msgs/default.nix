
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-view-controller-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/view_controller_msgs-release/archive/release/melodic/view_controller_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "cec91dd973a711c951445740ee4d743fb4907de310411e62bbd9796d3fcf54fe";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for (camera) view controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
