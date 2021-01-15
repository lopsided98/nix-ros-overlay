
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, libyamlcpp, nodelet, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-yocs-cmd-vel-mux";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_cmd_vel_mux/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "ff197e158bd6a94b4991ccf8d2ae752e41c050dbb13792ac13ade322965a35fa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs libyamlcpp nodelet pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A multiplexer for command velocity inputs. Arbitrates incoming cmd_vel messages from several topics,
     allowing one topic at a time to command the robot, based on priorities. It also deallocates current
     allowed topic if no messages are received after a configured timeout. All topics, together with their
     priority and timeout are configured through a YAML file, that can be reload at runtime.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
