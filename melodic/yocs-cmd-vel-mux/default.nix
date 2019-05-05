
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, libyamlcpp, catkin, roscpp, dynamic-reconfigure, nodelet, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-cmd-vel-mux";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_cmd_vel_mux/0.8.2-0.tar.gz;
    sha256 = "fb7a0444d33e684e14c5c1b78fa3c2cda433abbd202401316232daff02af5791";
  };

  buildInputs = [ pluginlib libyamlcpp roscpp dynamic-reconfigure nodelet geometry-msgs ];
  propagatedBuildInputs = [ pluginlib libyamlcpp roscpp dynamic-reconfigure nodelet geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A multiplexer for command velocity inputs. Arbitrates incoming cmd_vel messages from several topics,
     allowing one topic at a time to command the robot, based on priorities. It also deallocates current
     allowed topic if no messages are received after a configured timeout. All topics, together with their
     priority and timeout are configured through a YAML file, that can be reload at runtime.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
