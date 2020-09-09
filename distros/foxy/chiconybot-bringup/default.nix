
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, chiconybot-description, chiconybot-node, hls-lfcd-lds-driver, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-chiconybot-bringup";
  version = "0.0.0-r2";

  src = fetchurl {
    url = "https://github.com/jediofgever/ROS_CB-release/archive/release/foxy/chiconybot_bringup/0.0.0-2.tar.gz";
    name = "0.0.0-2.tar.gz";
    sha256 = "bc32e731e730cf13390dafd7799a7bd50abb2aebc7cf5abda322fb0aedadc639";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ chiconybot-description chiconybot-node hls-lfcd-lds-driver robot-state-publisher rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for starting the Chiconybot'';
    license = with lib.licenses; [ asl20 ];
  };
}
